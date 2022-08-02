<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ikujo.model.ChattingDTO"%>
<%@page import="ikujo.model.ChattingDAO"%>
<%@page import="ikujo.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div >
<fieldset>
<legend>여기는 대화목록입니다</legend>
<table>
	<thead>대화방 목록</thead>
	<tbody id="whos">
		<tr></tr>
	</tbody>
</table>
</fieldset>

</div>
<fieldset id="chattingRoom">
<legend>여기는 채팅방입니다</legend>
	<%
MemberDTO info = (MemberDTO) session.getAttribute("info");
String toName = info.getUserNm();
String fromName = request.getParameter("usaUser");
%>

	대화상대 :
	<%=fromName%><br>
	<%
	
	ChattingDTO dto = new ChattingDTO(toName,fromName);
	ArrayList<ChattingDTO> MessegesAll = (ArrayList) new ChattingDAO().ChattingAll(dto);
	Gson gson = new Gson();
	String json = gson.toJson(MessegesAll);
	if(MessegesAll != null){
		for(int i = 0; i<MessegesAll.size();i++){
	%>	
		<%=MessegesAll.get(i).getToName() %>:
		<%=MessegesAll.get(i).getMesseges() %><bR>
		<%=MessegesAll.get(i).getC_date()%><br>
	<%}
		} %>
	<textarea rows="3" cols="30" class="textbox"></textarea>
	<input type="submit" value="보내기" id="send">
	<input type="submit" value="나가기" id="out">
</fieldset>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		
		
		$('#send').on('click',function() {
					var toName ='<%=toName%>'
		           var fromName ='<%=fromName%>'
		var messeges = $('.textbox').val();
					$.ajax({
						/* 어디로 보낼건지? */
						url : "ChattingAjax",
						/* 어떤 데이터를 보낼 것인지? */
						data : {
							toName : toName,
							fromName : fromName,
							messeges : messeges,
							
						},
						/* 데이터를 어떤 형태로 받아올 것인지 */
						dataType : "json",
						/* 성공 시 */
						success : function(key) {
							console.log(key)
						},
						/* 실패 시 */
						error : function(e) {
							alert('실패');
							console.log(e);
						}

					})

				});
		$('#out').click(function(){
			var fromName = '<%=fromName%>'
			$('#whos').append("<tr></tr>");
			$('#whos tr').last().append("<td>"+fromName+"님과의 대화방</td>")
		    $('#chattingRoom').remove()
			$('#whos tr>td').append("<td>"+"<button id='delete'>"+"삭제하기</button></td>")
			$('#whos tr>td').append("<td>"+"<button id='resend'>"+"입장하기</button></td>")
		})
		$(document).on('click','#resend',function(){
			var json = <%=json%>
			console.log(json)
			for(var i = 0; i<json.length;i++){
			$('#chattingRoom').last().append(json[i].toName+"<br>")
			$('#chattingRoom').last().append(json[i].toMesseges+"<br>")
			$('#chattingRoom').last().append(json[i].toC_date)
			}
		})
	</script>
	
</body>
</html>