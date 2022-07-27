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
	<form action="Login.do" method="POST" class="joinForm">

		<h2>L O G I N</h2>
		<div class="textForm">
			<input name="id" type="text" class="id" placeholder="아이디"> </input>
		</div>
		<div class="textForm">
			<input name="pw" type="password" class="pw" placeholder="비밀번호">
		</div>
		
		<input type="submit" class="btn" value="L O G I N" />
	</form>
<!-- 	<form action="Login.do" method="post">
		아이디 : <input type="text" name="id"> 비밀번호 : <input
			type="password" name="pw"> <input type="submit" value="로그인">
	</form> -->

</body>
</html>