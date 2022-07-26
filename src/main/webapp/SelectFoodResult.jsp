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

	<%
	ArrayList<String> list = (ArrayList) session.getAttribute("foodInfo");
	%>
	<form action="./InsertFood.jsp" method="get">
		<table>
			<%
			for (int i = 0; i < list.size(); i++) {
			%>
			<tr>
				<td><%=list.get(i)%></td>
				<td><button type="submit" name="food" value="<%=list.get(i)%>">선택하기</button></td>
			</tr>
			<%
			}
			%>
		</table>
	</form>

</body>
</html>