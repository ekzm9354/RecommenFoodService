<%@page import="ikujo.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥줘 영양줘</title>
<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon2.ico">
</head>
<body>
	<form action="Update.do"method="post">
	 <% MemberDTO info = (MemberDTO) session.getAttribute("info"); %>
	닉네임 : <%=info.getUserNm() %><br>
	아이디 : <%=info.getUserid() %>
	<input type="hidden" name="id" value="<%= info.getUserid()%>"><br>
	비밀번호: <input type="password" name="pw" placeholder="변경할 비밀번호를 입력하세요"><br>
	<input type="submit" value="U P D A T E">
	
	</form>
</body>
</html>