<%@page import="ikujo.model.NutrientsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ikujo.model.NutrientsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<% ArrayList<NutrientsDTO> nutriList=new NutrientsDAO().showNutreCate("ca");
 		for(int i=0; i<3; i++){ 
 		NutrientsDTO dto =nutriList.get(i);%>
 			<img src="<%=dto.getImg()%>" >
 			<%=dto.getNutnm()%>
 			
 	<%	}	%>
</body>
</html>