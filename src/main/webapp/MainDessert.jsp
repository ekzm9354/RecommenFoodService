<%@page import="ikujo.model.DessertDTO"%>
<%@page import="ikujo.model.DessertDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥줘 영양줘</title>
<link rel="icon" href="img/yerimimg/logoimg.ico">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
.project-tab a {
	color: gray;
	background-color: transparent;
	border-color: transparent red;
	border-bottom: 3px solid !important;
	font-size: 16px;
	font-weight: bold;
}

.project-tab .nav-link:hover {
	border: solid;
}

.tab-content {
	text-align: center;
}

.table th {
	text-align: center;
}
</style>
</head>

<body>
<div class="tab-content" id="nav-tabContent">
		<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
			aria-labelledby="nav-home-tab">
			<table class="table" cellspacing="0">
				<thead>
					<tr>
						<th>디저트 사진</th>
						<th>디저트 이름</th>
					</tr>

				</thead>
				
				<tbody id="MainDessert">
				<%
					ArrayList<DessertDTO> riceList = (ArrayList) new DessertDAO().showD("과일류");
					for (int i = 0; i < 3; i++) {
					%>
					<tr>
						<%
						DessertDTO dto = riceList.get(i);
						%>
						<td><img class="Dessertimage" src="dfile/<%=dto.getImg()%>" width="400px"
							height="250px"></td>
						<td><%=dto.getDname()%></td>
					</tr>

					<%
					}
					%>
					</div>
					<script>
					
					
					
					
					</script>


				</tbody>
			</table>
		</div>
	</div>


</body>
</html>