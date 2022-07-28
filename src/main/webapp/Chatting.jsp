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

	안녕하세요 채팅방입니다
	<%
MemberDTO info = (MemberDTO) session.getAttribute("info");
String name = info.getUserNm();
%>
	<a href="http://crazy-things-reply-59-0-236-245.loca.lt/?id=<%=name%>"><button>채팅방
			입장하기</button></a>

</body>
</html>