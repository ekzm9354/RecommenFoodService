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
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	%>
	<h1><%=info.getUserNm()%>님 어서오세요!
	</h1>
	
	<a href="./InsertFood.jsp"><h2>음식등록하기</h2></a><br>
	<a href="./UpdateMember.jsp"><h2>회원정보수정</h2> <br></a>
	<a href="./DeleteMember.do"><h2>회원탈퇴</h2>
	<a href="./RecommendFood.jsp"><h2>메뉴추천받기</h2></a>
		<br></a>
</body>
</html>