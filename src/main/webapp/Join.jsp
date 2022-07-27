<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="Join.css" rel="stylesheet">
<body>

	<form action="Join.do" method="POST" class="joinForm">

		<h2>J O I N</h2>
		<div class="textForm">
			<input name="id" type="text" class="id" placeholder="아이디"> </input>
		</div>
		<div class="textForm">
			<input name="pw" type="password" class="pw" placeholder="비밀번호">
		</div>
		<div class="textForm">
			<input name="name" type="text" class="name" placeholder="닉네임">
		</div>
		<div class="textForm">
			남자<input name="gender" type="radio" class="nickname" placeholder="성별" value="남성">
			여자<input name="gender" type="radio" class="nickname" placeholder="성별" value="여성">
		</div>
		<div class="textForm">
			20대<input name="age" type="radio" class="cellphoneNo"placeholder="나이" value="20">
			30대<input name="age" type="radio" class="cellphoneNo"placeholder="나이" value="30">
		</div>
		<input type="submit" class="btn" value="J O I N" />
	</form>
	<!-- <form action="Join.do" method="post">
		아이디 : <input type="text" name="id" placeholder="아이디를 입력하세요">
		비밀번호 : <input type="password" name="pw" placeholder="비밀번호를 입력하세요">
		닉네임 : <input type="text" name="name" placeholder="닉네임을 입력하세요">
		성별 : <input type="radio" name="gender" value="남성">남자 <input
			type="radio" name="gender" value="여성">여자 나이 : <input
			type="radio" name="age" value="20">20대 <input type="radio"
			name="age" value="30">30대 <input type="submit" value="회원가입">
	</form> -->


</body>
</html>