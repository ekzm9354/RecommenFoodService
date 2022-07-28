<%@page import="java.util.ArrayList"%>
<%@page import="ikujo.model.FoodDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="FoodMain.css" rel="stylesheet">
<link href="SelectFoodResult.css" rel="stylesheet">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<form action="./InsertFood.jsp">
		<!------ Include the above in your HEAD tag ---------->
		<%
		ArrayList<String> list = (ArrayList) session.getAttribute("foodInfo");
		%>
		<section id="tabs" class="project-tab">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="tab-content" id="nav-tabContent">
							<div class="tab-pane fade show active" id="nav-home"
								role="tabpanel" aria-labelledby="nav-home-tab">
								<table class="table" cellspacing="0">
									<thead>
										<tr>
											<th>음식</th>
											<th>선택하기</th>

										</tr>
									</thead>
									<tbody>

										<%
										for (int i = 0; i < list.size(); i++) {
										%>
										<tr>
											<td><%=list.get(i)%></td>
											<td><button type="submit" name="food" class="btn"
													value="<%=list.get(i)%>">선택하기</button></td>
										</tr>
										<%
										}
										%>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</form>
	<%-- 
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
	</form> --%>

</body>
</html>