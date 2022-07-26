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
	<form action="UpdateMember.do"method="post">
	 <% MemberDTO info = (MemberDTO) session.getAttribute("info"); %>
	닉네임 : <%=info.getUserNm() %><br>
	아이디 :<%=info.getUserid()%>
	비밀번호: <input type="password" name="resetPw" placeholder="변경할 비밀번호를 입력하세요"><br>
	<input type="submit" value="회원정보 수정하기">
	
	</form>
</body>
</html>