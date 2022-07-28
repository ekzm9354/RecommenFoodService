<%@page import="ikujo.model.ShowFoodDAO"%>
<%@page import="ikujo.model.ShowFoodDTO"%>
<%@page import="java.util.ArrayList"%>
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
String id=request.getParameter("id"); 
ArrayList<ShowFoodDTO> foodList =new ShowFoodDAO().showFoodId(id);
%>
<table>
<tr>
<th>날짜</th><th>음식명</th>
</tr>
<%for(ShowFoodDTO dto:foodList){ %>
	<tr>
	<td><%=dto.getUdate()%></td><td><%=dto.getFoodNm()%></td>
	<tr>
<% }%>
</table>

</body>
</html>