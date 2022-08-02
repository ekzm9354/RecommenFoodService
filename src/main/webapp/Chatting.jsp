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
	<div>
		<fieldset>
			<legend>여기는 대화목록입니다</legend>
			<table>
				<thead>대화방 목록
				</thead>
				<tbody id="whos">
					<tr></tr>
				</tbody>
			</table>
		</fieldset>
	</div>
	<div id="chattingMain">
		<fieldset id="chattingRoom">
			<legend>여기는 채팅방입니다</legend>
			<%
MemberDTO info = (MemberDTO) session.getAttribute("info");
String toName = info.getUserid();
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
		</fieldset>
		<textarea rows="3" cols="30" class="textbox"></textarea>
		<input type="submit" value="보내기" id="send"> <input
			type="submit" value="나가기" id="out">
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		
		
		$('#send').on('click',function() {
					var toName ='<%=toName%>'
		           var fromName ='<%=fromName%>'
		           var cnt = 1
		var messeges = $('.textbox').val();
					$.ajax({
						/* 어디로 보낼건지? */
						url : "ChattingAjax",
						/* 어떤 데이터를 보낼 것인지? */
						data : {
							toName : toName,
							fromName : fromName,
							messeges : messeges,
							cnt:cnt
						},
						/* 데이터를 어떤 형태로 받아올 것인지 */
						dataType : "json",
						/* 성공 시 */
						success : function(key) {
							console.log(key)
							for(var i =0;i<key.length;i++){
							$('#chattingRoom').last().append(key[i].toName +":")
							$('#chattingRoom').last().append(key[i].messeges)
							$('#chattingRoom').last().append(key[i].c_date+"<br>")
							}
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
		    $('.textbox').remove()
		    $('#send').remove()
		    $('#out').remove()
		    
			$('#whos tr>td').append("<td>"+"<button id=delete>"+"삭제하기</button></td>")
			$('#whos tr>td').append("<td>"+"<button id=inRoom>"+"입장하기</button></td>")
		})
		$(document).on('click','#inRoom',function(){
			var json = <%=json%>
			console.log(json)
			$('#chattingMain').append("<fieldset></fieldset>")
			대화상대 : '<%=fromName%>'
			for(var i = 0; i<json.length;i++){
			$('#chattingMain fieldset').last().append(json[i].toName+":")
			$('#chattingMain fieldset').last().append(json[i].messeges+"<br>")
			$('#chattingMain fieldset').last().append(json[i].c_date+"<br>")
			}
			$('#chattingMain').last().append("<textarea row=3 col=30 class=retextbox></textarea>")
			$('#chattingMain').append("<tr></tr>")
			$('#chattingMain tr').append("<input type=submit value=보내기 id=resend>")
			location.reload()
			/* $('#chattingMain tr').append("<input type=submit value=나가기 id=reout>") */
		})
		$(document).on('click','#resend',function() {
					var toName ='<%=toName%>'
		           var fromName ='<%=fromName%>'
					var cnt = 1
		
			var messeges = $('.retextbox').val();
			$.ajax({
				/* 어디로 보낼건지? */
				url : "ChattingAjax",
				/* 어떤 데이터를 보낼 것인지? */
				data : {
					toName : toName,
					fromName : fromName,
					messeges : messeges,
					cnt:cnt

				},
				/* 데이터를 어떤 형태로 받아올 것인지 */
				dataType : "json",
				/* 성공 시 */
				success : function(key) {
					for(var i =0;i<key.length;i++){
						$('#chattingMain fieldset').last().append(key[i].toName+":")
						$('#chattingMain fieldset').last().append(key[i].messeges)
						$('#chattingMain fieldset').last().append(key[i].c_date+"<br>")
					}
				},
				/* 실패 시 */
				error : function(e) {
					alert('실패');
					console.log(e);
				}

			})

		});
		$(document).on('click','#delete',function(){
			var toName='<%=toName%>'
			var fromName='<%=fromName%>'
			$.ajax({
				url : "DeleteChattingAjax",
				data : {
					toName : toName,
					fromName : fromName
				},
				success : function(key) {
					alert('삭제되었습니다')
					var link = "Chat.jsp";
					location.href = link;
				},
				error : function(key) {
					alert('삭제가 불가합니다')
				}
			})
		});
	</script>

</body>
</html>