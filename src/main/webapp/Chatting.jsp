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
	여기는 채팅방입니다

	<%
MemberDTO info = (MemberDTO) session.getAttribute("info");
String toName = info.getUserNm();
String fromName = request.getParameter("usaUser");
%>

	대화상대 :
	<%=fromName%>

	<textarea rows="3" cols="30" class="textbox"></textarea>
	<input type="submit" value="보내기" id="send">

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		var cnt = 0
		
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
							cnt : cnt
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
	</script>
</body>
</html>