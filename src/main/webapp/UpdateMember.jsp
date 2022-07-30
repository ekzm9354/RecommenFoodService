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
<!-- css 연결 -->
<link href="Login.css" rel="stylesheet">
<body>

<form action="Update.do"method="post">
	<% MemberDTO info = (MemberDTO) session.getAttribute("info"); %>
		<section class="ftco-section">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-6 text-center mb-5">
						<h2 class="heading-section">
							회원 정보 수정
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
										<h3 class="mb-4"><!-- 회원 정보 수정 --></h3>
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
									<div class="form-group mb-3">
										<label class="label" for="name">닉네임</label>
										<label class="form-control"><%=info.getUserNm() %></label>
									</div>
									<div class="form-group mb-3">
										<label class="label" for="name" name="id" value="<%= info.getUserid()%>">아이디</label>
										<label class="form-control"><%=info.getUserid() %></label>
									</div>
									<div class="form-group mb-3">
										<label class="label" for="password">비밀번호</label> <input
											name="pw" type="password" class="form-control"
											placeholder="수정할 비밀번호를 입력하세요" required>
									</div>
									<div class="form-group">
										<button type="submit"
											class="form-control btn btn-primary submit px-3">수정</button>
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


<%-- 	<form action="Update.do"method="post">
	 <% MemberDTO info = (MemberDTO) session.getAttribute("info"); %>
	닉네임 : <%=info.getUserNm() %><br>
	아이디 : <%=info.getUserid() %>
	<input type="hidden" name="id" value="<%= info.getUserid()%>"><br>
	비밀번호: <input type="password" name="pw" placeholder="변경할 비밀번호를 입력하세요"><br>
	<input type="submit" value="U P D A T E">
	
	</form> --%>
</body>
</html>