<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="Join.do" method="post">
		아이디 : <input type="text" name="id" placeholder="아이디를 입력하세요"> 비밀번호 : <input type="password" name="pw" placeholder="비밀번호를 입력하세요"> 
		닉네임 : <input type="text" name="name" placeholder="닉네임을 입력하세요"> 
		성별 : <input type="radio" name="gender"	value="남성">남자
		<input type="radio" name="gender" value="여성">여자
		나이 : <input type="radio" name="age" value="20">20대 <input type="radio" name="age" value="30">30대
		<input type="submit"value="회원가입">
	</form>


</body>
</html>