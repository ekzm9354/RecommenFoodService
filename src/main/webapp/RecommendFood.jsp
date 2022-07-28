<%@page import="ikujo.model.NutrientsDTO"%>
<%@page import="ikujo.model.NutrientsDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
#recommendFood{
height: 500px;
width: 500px;
background-color: yellow;
}
#recommendNutrients{
height: 500px;
width: 500px;
background-color: blue;
}

</style>

</head>
<body>
	<%@ include file="./include.jsp"%>
	<%
	String id = (String) session.getAttribute("id");
	%>





	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area"
		style="background-image: url(img/bg-img/breadcumb.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>추천시스템</h2>
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
							<!-- <li class="breadcrumb-item"><a href="#"></a></li> -->
							<!-- <li class="breadcrumb-item active" aria-current="page">Single
								Post Blog</li> -->
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Breadcumb Area End ****** -->


	<!-- ****** Single Blog Area Start ****** -->
	<section class="recommedSys">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-12 col-lg-8">
					<div class="row no-gutters">
						<!-- Single Post -->
						<div class="col-10 col-sm-11">
							<div class="single-post">
								<div class="recommendFoodImg"> <!-- 여기 음식 이미지 넣을 준비 -->
									<%
								String[] menu = request.getParameterValues("menu");
								if (menu != null) {
								%>
									<%
								for (int i = 0; i < menu.length; i++) {
								%>
									<%=menu[i]%><br>
									<%
								}
								}
								%>
								</div>
								<div id="recommendNtrients">
									<%
								NutrientsDAO dao =new NutrientsDAO();
								String[] nutrients = request.getParameterValues("nutrients");
								if (nutrients != null) {
								%>
								<%
								for (int i = 0; i < nutrients.length; i++) {
								ArrayList<NutrientsDTO> NutDto=	dao.showNutrients(nutrients[i]);
								
								%>
								<img sr>
								<%=nutrients[i]%><br>
								<%
								}
								}
								
								%>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- ****** Blog Sidebar ****** -->
				<div class="col-12 col-sm-8 col-md-6 col-lg-4">
					<div class="blog-sidebar mt-5 mt-lg-0">
						<!-- Single Widget Area -->
						<div class="single-widget-area about-me-widget text-center">
							<div class="widget-title">
								<h6>메뉴추천</h6>
							</div>
							<div class="about-me-widget-thumb">
								<form action="http://127.0.0.1:5000/foodRecommend" method="get">
									<select name="category">
					
					
										<option value="고기류">고기류</option>
										<option value="국류">국류</option>
										<option value="면류">면류</option>
										<option value="튀김류">튀김류</option>
										<option value="기타류">기타류</option>
										<option value="빵류">빵류</option>
									</select> <input type="hidden" value="<%=id%>" name="id"> <input
										type="submit">
								</form>

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap-4 js -->
	<script src="js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins JS -->
	<script src="js/others/plugins.js"></script>
	<!-- Active JS -->
	<script src="js/active.js"></script>
</body>
</html>