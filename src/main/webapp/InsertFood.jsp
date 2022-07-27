<%@page import="java.io.InputStream"%>
<%@page import="ikujo.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="Join.css" rel="stylesheet">
</head>
<body>

		<h1>음 식 등 록</h1>
		<div class="textForm">
			<h3>오늘 음식 등록</h3>
		</div>
		<div class="textForm">
			<h3>과거 음식 등록</h3>
		</div>
		<input type="submit" class="btn" value="I N S E R T" />
	
	<%-- <form action="InsertFood.do" method="post">
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
	<br> --%>
</body>
</html>