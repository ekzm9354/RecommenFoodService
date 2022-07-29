<%@page
	import="org.eclipse.jdt.internal.compiler.ast.Annotation.AnnotationTargetAllowed"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.InputStream"%>
<%@page import="ikujo.model.MemberDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="FoodMain.css" rel="stylesheet">
<link href="FoodMain2.css" rel="stylesheet">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<%@ include file="./include.jsp"%>


	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area"
		style="background-image: url(img/bg-img/breadcumb.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>음식 등록</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="breadcumb-nav">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-home" aria-hidden="true"></i> 홈</a></li>
							<li class="breadcrumb-item"><a href="#"></a>음식 등록</li>
							<!-- <li class="breadcrumb-item active" aria-current="page">Single
								Post Blog</li> -->
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Breadcumb Area End ****** -->

	<!------ Include the above in your HEAD tag ---------->
	<%-- <form action="InsertFood.do" method="post">
		<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		session.setAttribute("id", info.getUserid());
		session.setAttribute("name", info.getUserNm());
		String foodNm = request.getParameter("food");
		%>
		<%
		if (foodNm != null) {
		%>
		음식명 : <input type="text" name="foodNm" value="<%=foodNm%>">
		<%
		} else {
		%>
		음식명 : <input type="text" name="foodNm">
		<%
		}
		%>
		<input type="submit" value="등록하기">
	</form>
	<a href="./SelectFood.jsp"><button>조회하기</button></a>
	<br> --%>



	<section id="tabs" class="project-tab">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<nav>
						<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
							<a class="nav-item nav-link active" id="nav-home-tab"
								data-toggle="tab" href="#nav-home" role="tab"
								aria-controls="nav-home" aria-selected="true">지난 음식 등록</a>
						</div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-home"
							role="tabpanel" aria-labelledby="nav-home-tab">
							<table class="table" cellspacing="0">
								<thead>
									<tr>
										<th>날짜</th>
										<th>음식</th>
										<th>조회 / 등록</th>
									</tr>
								</thead>
								<tbody>


									<tr>
										<td>현재시간출력</td>
										<%
										info = (MemberDTO) session.getAttribute("info");
										session.setAttribute("id", info.getUserid());
										session.setAttribute("name", info.getUserNm());
										String foodNm = request.getParameter("food");
										%>
										<%
										if (foodNm != null) {
										%>
										<form action="InsertFood.do" method="post">
											<td><input type="text" placeholder="음식명" name="foodNm"
												value="<%=foodNm%>"></td>
											<td><input type="submit" value="등록하기" class="btn"></td>
										</form>
										<%
										}
										%>
										<!-- <td><input type="text" placeholder="음식명" name="foodNm"></td> -->
										<td><a href="SelectFood.jsp"><button class="btn"
													id="search">조회하기</button></a></td>

									</tr>

								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript">

	$(document).on('click','#search',()=>{
	
	
		console.log("info null")
		var link = "SelectFood.jsp";
		location.href=link;
		location.replace(link);
		window.open(link);
	
	
	})
	</script>

</body>
</html>