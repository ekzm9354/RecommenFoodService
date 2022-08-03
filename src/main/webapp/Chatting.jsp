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
<title>밥줘 영양줘</title>
<!-- Favicon -->
<link rel="icon" href="img/yerimimg/logoimg.ico">
<link href="Chat.css" rel="stylesheet">
</head>
<body>

	<div class="chat_window">
		<div class="top_menu">
			<div class="buttons">
				<div class="button close"></div>
				<div class="button minimize"></div>
				<div class="button maximize"></div>
			</div>
			<div id="whos">대화방 목록</div>
		</div>
		<ul id="chattingMain">
    <div id="chattingRoom">
   <%
MemberDTO info = (MemberDTO) session.getAttribute("info");
String toName = info.getUserid();
String fromName = request.getParameter("usaUser");
%>

			<div style="border:2px solid #BCE55C; border-radius: 10px; padding: 7px;margin: 10px;box-sizing: border-box;display: table-cell;">
				대화상대 : <%=fromName%><br></div>
			<div style="margin:10px 0px 10px 0px"></div><!-- 빈공간 만들기  -->
			
	
	<%ChattingDTO dto = new ChattingDTO(toName,fromName);
	ArrayList<ChattingDTO> MessegesAll = (ArrayList) new ChattingDAO().ChattingAll(dto);
	Gson gson = new Gson();
	String json = gson.toJson(MessegesAll);
	
	if(MessegesAll != null){
		for(int i = 0; i<MessegesAll.size();i++){
	%> <span style="border:1px solid #E5D85C; border-radius: 5px; display:inline-block;width:400px; height:30px; float:right; vertical-align: middle; ">
			<%=MessegesAll.get(i).getToName() %>:
			<%=MessegesAll.get(i).getMesseges() %></span><br>
			<span style="display:inline-block; width:400px; float:right;text-align: right;"><%=MessegesAll.get(i).getC_date()%></span><br>
			<%}
		} %>
   
    
    </div>
    </ul>
		<div class="bottom_wrapper clearfix">
			<div class="message_input_wrapper">
				<input class="message_input" placeholder="보낼 메세지를 입력해주세요..." />
			</div>


			<div class="textbox">
				<input type="submit" value="보내기" id="send"> <input
					type="submit" value="나가기" id="out">
			</div>
		</div>
	</div>
	<div class="message_template">
		<li class="message">
			<div class="avatar"></div>
			<div class="text_wrapper">
				<div class="text"></div>
			</div>
		</li>
	</div>
	<!--여기부터 스크립트부분  -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		
		
		$('#send').on('click',function() {
					var toName ='<%=toName%>'
		           var fromName ='<%=fromName%>'
		           var cnt = 1
		var messeges = $('.message_input').val();
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
							$('#chattingRoom').last().append(key[i].toName +"님 : ")
							$('#chattingRoom').last().append(key[i].messeges)
							$('#chattingRoom').last().append(key[i].c_date+"<br>")
							location.reload()
							}
						},
						/* 실패 시 */
						 error : function(e) {
							alert('전송실패');
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
			$('#chattingMain').append("<div></div>")
			대화상대 : '<%=fromName%>'
			for(var i = 0; i<json.length;i++){
			$('#chattingMain div').last().append(json[i].toName+"님 : ")
			$('#chattingMain div').last().append(json[i].messeges+"<br>")
			$('#chattingMain div').last().append(json[i].c_date+"<br>")
			}
			$('#chattingMain').last().append("<div row=3 col=30 class=retextbox></div>")
			$('#chattingMain').append("<div></div>")
			$('#chattingMain div').append("<input type=submit value=보내기 id=resend>")
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
						$('#chattingMain div').last().append(key[i].toName+"님 : ")
						$('#chattingMain div').last().append(key[i].messeges)
						$('#chattingMain div').last().append(key[i].c_date+"<br>")
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
	<!--여기까지 스크립트부분  -->

</body>
</html>