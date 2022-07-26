<%@page import="java.util.ArrayList"%>
<%@page import="ikujo.model.FoodDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="SelectFood.do" method="post">
		<input type="text" name="keyword"><br> <input
			type="submit" value="조회하기"> 예)'치킨','샐러드','파스타' 와 같이 입력해주세요
	</form>
</body>
</html>