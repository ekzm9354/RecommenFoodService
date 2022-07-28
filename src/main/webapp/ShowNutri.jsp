<%@page import="ikujo.model.FoodDAO"%>
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
ArrayList<ShowFoodDTO> foodList =new FoodDAO().showFoodId(id);
%>
<table>
<tr>
<th>날짜</th><th>kcal</th><th>carbohydrate</th><th>protein</th><th>fat</th><th>sugar</th><th>ca</th><th>fe</th><th>mg</th><th>na</th><th>k</th>
<th>vitaminB</th><th>vitaminC</th>
</tr>
<%for(ShowFoodDTO dto:foodList){ %>
	<tr>
	<td><%= dto.getUdate()%></td><td><%=dto.getKcal() %></td><td><%=dto.getCarbohydrate() %></td><td><%=dto.getProtein() %></td><td><%=dto.getFat() %></td>
	<td><%=dto.getSugar()%></td><td><%=dto.getCa()%></td><td><%=dto.getFe()%></td><td><%=dto.getMg()%></td><td><%=dto.getNa()%></td><td><%=dto.getK()%></td>
	<td><%=dto.getVitaminB()%></td><td><%=dto.getVitaminC()%></td>
	<tr>
<% }%>
</table>

</body>
</html>