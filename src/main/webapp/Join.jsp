<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥줘 영양줘</title>
<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon2.ico">
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Title Page-->
<title>Au Register Forms by Colorlib</title>

<!-- Icons font CSS-->
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/datepicker/daterangepicker.css" rel="stylesheet"
	media="all">

<!-- Main CSS-->
<link href="css/main.css" rel="stylesheet" media="all">
</head>
<link href="Join2.css" rel="stylesheet">
<body>

	<form action="Join.do" method="POST" class="joinForm">
		<div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
			<div class="wrapper wrapper--w960">
				<div class="card card-2">
					<div class="card-heading"></div>
					<div class="card-body">
						<h2 class="title">회 원 가 입</h2>
						<div class="input-group">
							<input name="id" type="text" class="id" placeholder="아이디">
							<font id="checkid" size="2"></font>

						</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<input name="pw" type="password" class="pw" placeholder="비밀번호">
								</div>
							</div>
							<div class="col-2">
								<div class="input-group">
									<div class="rs-select2 js-select-simple select--no-search">

										<select name="gender">
											<option disabled="disabled" selected="selected">성별</option>
											<option>남성</option>
											<option>여성</option>
										</select>
										<div class="select-dropdown"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="input-group">
							<div class="rs-select2 js-select-simple select--no-search">
								<select name="age">
									<option disabled="disabled" selected="selected">나이</option>
									<option>20</option>
									<option>30</option>
								</select>
								<div class="select-dropdown"></div>
							</div>
						</div>
						<div class="row row-space">
							<div class="col-2">
								<div class="input-group">
									<input name="name" type="text" class="name" placeholder="닉네임">
									<font id="checkName" size="2"></font>
								</div>
							</div>
						</div>
						<div class="p-t-30">
							<button class="btn btn--radius btn--green disabled" type="submit">회원가입</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>


	<!-- Jquery JS-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/datepicker/moment.min.js"></script>
	<script src="vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="js/global.js"></script>
	<!-- 회원가입 중복 id,name 확인  -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		$('.id').focusout(function() {
			var id = $('.id').val();
			console.log(id)
			$.ajax({

				url : "MemberIdAjax",

				data : {
					userid : id
				},
				dataType : "json",
				success : function(data) {
					console.log(data)
					if (data == '0') {
						$("#checkid").html('사용가능한 아이디입니다')
						$('#checkid').css('color', 'green')
					} else {
						$("#checkid").html('사용불가능한 아이디입니다')
						$('#checkid').css('color', 'red')
					}
				},
				error : function(e) {
					alert('실패');
					console.log(e);
				}

			})

		});
		$('.name').focusout(function() {
			var name = $('.name').val();
			console.log(name)
			$.ajax({

				url : "MemberNmAjax",

				data : {
					name : name
				},
				dataType : "json",
				success : function(data) {
					console.log(data)
					if (data == '0') {
						$("#checkName").html('사용가능한 닉네임입니다')
						$('#checkName').css('color', 'green')
					} else {
						$("#checkName").html('사용불가능한 닉네임입니다')
						$('#checkName').css('color', 'red')
					}
				},
				error : function(e) {
					alert('실패');
					console.log(e);
				}

			})

		});
	</script>
	<!-- <form action="Join.do" method="POST" class="joinForm">

		<h2>J O I N</h2>
		<div class="textForm">
			<input name="id" type="text" class="id" placeholder="아이디"> </input>
		</div>
		<div class="textForm">
			<input name="pw" type="password" class="pw" placeholder="비밀번호">
		</div>
		<div class="textForm">
			<input name="name" type="text" class="name" placeholder="닉네임">
		</div>
		<div class="textForm">
			남자<input name="gender" type="radio" class="nickname" placeholder="성별" value="남성">
			여자<input name="gender" type="radio" class="nickname" placeholder="성별" value="여성">
		</div>
		<div class="textForm">
			20대<input name="age" type="radio" class="cellphoneNo"placeholder="나이" value="20">
			30대<input name="age" type="radio" class="cellphoneNo"placeholder="나이" value="30">
		</div>
		<input type="submit" class="btn" value="J O I N" />
	</form> -->
	<!-- <form action="Join.do" method="post">
		아이디 : <input type="text" name="id" placeholder="아이디를 입력하세요">
		비밀번호 : <input type="password" name="pw" placeholder="비밀번호를 입력하세요">
		닉네임 : <input type="text" name="name" placeholder="닉네임을 입력하세요">
		성별 : <input type="radio" name="gender" value="남성">남자 <input
			type="radio" name="gender" value="여성">여자 나이 : <input
			type="radio" name="age" value="20">20대 <input type="radio"
			name="age" value="30">30대 <input type="submit" value="회원가입">
	</form> -->


</body>
</html>