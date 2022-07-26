<%@page import="java.io.InputStream"%>
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
	<form action="InsertFood.do" method="post">
		<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		session.setAttribute("id", info.getUserid());
		session.setAttribute("name", info.getUserNm());
		String foodNm = request.getParameter("food");
		%>
		<%
		if (foodNm != null) {
		%>
		음식명 : <input type="text" name="foodNm" value="<%=foodNm%>">
		<%
		} else {
		%>
		음식명 : <input type="text" name="foodNm">
		<%
		}
		%>
		<input type="submit" value="등록하기">
	</form>
	<a href="./SelectFood.jsp"><button>조회하기</button></a>
	<br>
</body>
</html>