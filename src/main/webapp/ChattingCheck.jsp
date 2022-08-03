<%@page import="ikujo.model.ChattingDAO"%>
<%@page import="ikujo.model.ChattingDTO"%>
<%@page import="java.util.ArrayList"%>
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
	<%
	String fromName = null;
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	String toName = info.getUserid();
	String userid = info.getUserid();
	ArrayList<ChattingDTO> CheckChatting = (ArrayList) new ChattingDAO().ChattingCheck(userid);
	for (int i = 0; i < CheckChatting.size(); i++) {
		String mes = CheckChatting.get(i).getMesseges();
		fromName = CheckChatting.get(i).getToName();
	%>
	<div>
	메세지<%=mes%>
	보낸이<%=fromName%>
	<input type="submit" id="response" value="보내기">
	<div id="dd"></div>
	<br>
	</div>
	<%
	}
	%>


</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$('#response').on('click',function(){
		$('#dd').append('<span></span>');
		$('#dd span').last().append("<textarea row=3 col=30 class=retextbox></textarea>")
		$('#dd span').append("<input type=submit value=보내기 id=resend>")
	})
	
	$(document).on('click','#resend',function(){
		var toName ='<%=toName%>'
		var fromName = '<%=fromName%>'
		var cnt =1
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
				alert('성공')
				},
			error : function(e) {
				alert('실패');
				console.log(e);
			}
		})

	});
</script>
</html>