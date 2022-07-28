<%@page import="ikujo.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <title>Login 07</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/style.css">
</head>

<link href="Login.css" rel="stylesheet">

<body>
	<form action="Login.do" method="POST" class="joinForm">
		<section class="ftco-section">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-6 text-center mb-5">
						<h2 class="heading-section">
							<!-- 제목 쓸수 있는 곳 -->
						</h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-12 col-lg-10">
						<div class="wrap d-md-flex">
							<div
								class="text-wrap p-4 p-lg-5 text-center d-flex align-items-center order-md-last">
								<!-- 사진넣기 -->
								<img src="./img/orange4.jpg">
								<!-- 								<div class="text w-100">
									<h2>글씨 가능</h2>
									<p>글씨 가능</p>
									<a href="#" class="btn btn-white btn-outline-white">Sign Up</a>
								</div> -->
							</div>
							<div class="login-wrap p-4 p-lg-5">
								<div class="d-flex">
									<div class="w-100">
										<h3 class="mb-4">로 그 인</h3>
									</div>
									<!-- 소셜미디어		
									<div class="w-100">
										<p class="social-media d-flex justify-content-end">
											<a href="#"
												class="social-icon d-flex align-items-center justify-content-center"><span
												class="fa fa-facebook"></span></a> <a href="#"
												class="social-icon d-flex align-items-center justify-content-center"><span
												class="fa fa-twitter"></span></a>
										</p>
									</div> -->
								</div>
								<form action="#" class="signin-form">
									<div class="form-group mb-3">
										<label class="label" for="name">아이디</label> <input name="id"
											type="text" class="form-control" placeholder="아이디" required>
									</div>
									<div class="form-group mb-3">
										<label class="label" for="password">비밀번호</label> <input
											name="pw" type="password" class="form-control"
											placeholder="비밀번호" required>
									</div>
									<div class="form-group">
										<button type="submit"
											class="form-control btn btn-primary submit px-3">로그인</button>
									</div>
									<!-- <div class="form-group d-md-flex">
										<div class="w-50 text-left">
											<label class="checkbox-wrap checkbox-primary mb-0">Remember
												Me <input type="checkbox" checked> <span
												class="checkmark"></span>
											</label>
										</div>
										<div class="w-50 text-md-right">
											<a href="#">Forgot Password</a>
										</div> -->
							</div>
	</form>
	</div>
	</div>
	</div>
	</div>
	</div>
	</section>

	<script src="js/jquery.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>

	</form>


	<!-- 		<h2>L O G I N</h2>
		<div class="textForm">
			<input name="id" type="text" class="id" placeholder="아이디"> </input>
		</div>
		<div class="textForm">
			<input name="pw" type="password" class="pw" placeholder="비밀번호">
		</div>
		
		<input type="submit" class="btn" value="L O G I N" />
	</form> -->
<!-- 	<form action="Login.do" method="post">
		아이디 : <input type="text" name="id"> 비밀번호 : <input
			type="password" name="pw"> <input type="submit" value="로그인">
	</form> -->

</body>
</html>