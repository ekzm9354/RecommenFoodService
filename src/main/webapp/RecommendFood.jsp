<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<%@ include file="./include.jsp" %>
<%
	String id = (String)session.getAttribute("id");
	%>
	<form action="http://127.0.0.1:5000" method="get">
		<select name="category">
			<option value="고기류">고기류</option>
			<option value="국류">국류</option>
			<option value="면류">면류</option>
			<option value="튀김류">튀김류</option>
			<option value="기타류">기타류</option>
			<option value="빵류">빵류</option>
		</select>
		<input type="hidden" value="<%=id%>" name="id">
		<input type="submit">
	</form>
	<%
	System.out.print("되너");
	String[] menu =request.getParameterValues("menu");
	if(menu !=null){%>
	<% for(int i =0; i<menu.length	; i++){ %>
	추천메뉴<%=i+1%> : <%=menu[i] %><br>
	<%}} %>
</body>
</html>