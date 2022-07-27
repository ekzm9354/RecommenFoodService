<%@page import="ikujo.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥줘 영양줘</title>

 <!-- Favicon -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link href="style.css" rel="stylesheet"> 

<!-- Responsive CSS -->
<link href="css/responsive/responsive.css" rel="stylesheet"> 

<!-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> -->
</head>
</head>
<body>
	<!-- ****** Top Header Area Start ****** -->
	<div class="top_header_area">
		<div class="container">
			<div class="row">
				<div class="col-5 col-sm-6">
					<!--  Top Social bar start -->
					<div class="top_social_bar">
						<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-skype" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
					</div>
				</div>
				<!--  Login Register Area -->
				
				<%
				MemberDTO info = (MemberDTO) session.getAttribute("info");
				if (info == null) {
				%>
				<div class="col-7 col-sm-6">
					<div
						class="signup-search-area d-flex align-items-center justify-content-end">
						<div class="login_register_area d-flex">
							<!-- 로그인  -->
							<div class="login">
								<a href="./Login.jsp">로그인</a>
							</div>
							<div class="register">
								<a href="./Join.jsp">회원가입</a>
							</div>
						</div>


					</div>
				</div>
				<%
				} else {
				%>
				<div class="col-7 col-sm-6">
					<div
						class="signup-search-area d-flex align-items-center justify-content-end">
						<div class="login_register_area d-flex">
							<!-- 로그인  -->
							<div class="login">
								<a href="./Logout.do">로그아웃</a>
							</div>
							<div class="register">
								<a href="./DeleteMember.jsp">회원탈퇴</a>
							</div>
						</div>


					</div>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</div>
	<!-- ****** Top Header Area End ****** -->

	<!-- ****** Header Area Start ****** -->
	<header class="header_area">
		<div class="container">
			<div class="row">
				<!-- Logo Area Start -->
				<div class="col-12">
					<div class="logo_area text-center">
						<a href="Main.jsp" class="yummy-logo">밥줘 영양줘</a>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<nav class="navbar navbar-expand-lg">
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#yummyfood-nav"
							aria-controls="yummyfood-nav" aria-expanded="false"
							aria-label="Toggle navigation">
							<i class="fa fa-bars" aria-hidden="true"></i> Menu
						</button>
						<!-- Menu Area Start -->
						<div class="collapse navbar-collapse justify-content-center"
							id="yummyfood-nav">
							<ul class="navbar-nav" id="yummy-nav">
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" id="yummyDropdown"
									role="button" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false">프로필</a>
									<div class="dropdown-menu" aria-labelledby="yummyDropdown">
										<a class="dropdown-item" href="index.html">1</a> <a
											class="dropdown-item" href="archive.html">2</a> <a
											class="dropdown-item" href="single.html">3</a> <a
											class="dropdown-item" href="static.html">4</a> <a
											class="dropdown-item" href="contact.html">5</a>
									</div></li>
								<li class="nav-item active"><a class="nav-link"
									href="index.html">음식 등록<span class="sr-only">(current)</span></a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#" onclick="location.href='foodcate.jsp'">음식 카테고리</a></li>
								<!--↑예림 : 음식카테고리 이동하는거 썼습니다.  -->
								<li class="nav-item"><a class="nav-link" href="#">영양보충제</a>
								</li>
								<li class="nav-item"><a class="nav-link"
									href="archive.html">만남의 장</a></li>
								<li class="nav-item"><a class="nav-link" href="#">만든이</a></li>

							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>

	<!-- ****** Header Area End ****** -->
</body>
</html>