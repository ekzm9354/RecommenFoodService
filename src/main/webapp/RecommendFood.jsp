<%@page import="ikujo.model.ShowFoodDAO"%>
<%@page import="ikujo.model.ShowFoodDTO"%>
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
#recommendFood {
	height: 500px;
	width: 500px;
	background-color: yellow;
}

#recommendNutrients {
	height: 500px;
	width: 500px;
	background-color: blue;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
	<section id="tabs" class="project-tab">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<nav>
						<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
							<a class="nav-item nav-link active keyword" id="rice_tab"
								data-toggle="tab" href="#rice" role="tab" aria-controls="rice"
								aria-selected="true">밥류</a> <a class="nav-item nav-link keyword"
								id="soup_tab" data-toggle="tab" href="#soup" role="tab"
								aria-controls="soup" aria-selected="false">국류</a> <a
								class="nav-item nav-link keyword" id="noodle_tab"
								data-toggle="tab" href="#noodle" role="tab"
								aria-controls="noodle" aria-selected="false">면류</a> <a
								class="nav-item nav-link keyword" id="bread_tab"
								data-toggle="tab" href="#bread" role="tab" aria-controls="bread"
								aria-selected="false">빵류</a> <a
								class="nav-item nav-link keyword" id="meat_tab"
								data-toggle="tab" href="#meat" role="tab" aria-controls="meat"
								aria-selected="false">고기류</a> <a
								class="nav-item nav-link keyword" id="fried_tab"
								data-toggle="tab" href="#fried" role="tab" aria-controls="fried"
								aria-selected="false">튀김류</a> <a
								class="nav-item nav-link keyword" id="others_tab"
								data-toggle="tab" href="#others" role="tab"
								aria-controls="others" aria-selected="false">기타류</a>
						</div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="rice" role="tabpanel"
							aria-labelledby="rice_tab">
							<table class="table" cellspacing="0">
								<!--밥류 -->
								<thead>
									<tr>
										<th>음식 사진</th>
										<th>음식 이름</th>
										<th>칼로리</th>
										<th>탄수화물</th>
										<th>단백질</th>
										<th>지방</th>
											<table>
		<!-- 여기 음식 이미지 넣을 준비 -->
		<%
		String[] menu = request.getParameterValues("menu");
		if (menu != null) {
			for (String foodNm : menu) {
				ArrayList<ShowFoodDTO> menuList = new ShowFoodDAO().recommendFood(foodNm);
				for (ShowFoodDTO dto : menuList) {
		%>
		<tr>
			<td><img src="file/<%=dto.getImg()%>" width="200px"
				height="200px"></td>
			<td><%=dto.getFoodNm()%></td>
			<td><%=dto.getKcal()%></td>
			<td><%=dto.getCarbohydrate()%></td>
			<td><%=dto.getProtein()%></td>
			<td><%=dto.getFat()%></td>
		</tr>
		<%
		}
		}
		}
		%>

	</table>
									</tr>
								</thead>
								<tbody id="foods">


								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script type="text/javascript">
		$('.keyword').on('click', function() {
			var keyword = $(this).text()
			console.log(keyword)
			// 클래스가 키워드인 친구를 클릭했을때 이너 텍스트로 키워드로 가져온다
		       console.log("flask로 간다")
				var link = "http://127.0.0.1:5000/?id=<%=id%>&category=" + keyword;
			location.href = link;
			location.replace(link);
			window.open(link);

		});

		function makeTable(key) {
			$("#foodRe").children().remove();
			for (var i = 0; i < key.length; i++) {
				console.log("g")
				$("#foodRe").append("<tr> </tr>");
				$("#foodRe tr")
						.last()
						.append(
								"<td>"
										+ "<img src= 'file/"+key[i].img+"' width=200px height=200px>"
										+ "</td>");
				$("#foodRe tr").last().append("<td>" + key[i].foodnm + "</td>");
				$("#foodRe tr").last().append("<td>" + key[i].kcal + "</td>");
				$("#foodRe tr").last().append(
						"<td>" + key[i].carbohydrate + "</td>");
				$("#foodRe tr").last()
						.append("<td>" + key[i].protein + "</td>");
				$("#foodRe tr").last().append("<td>" + key[i].fat + "</td>");
			}
		}
	</script>



	<!-------------------------         영양제               ------------------------  -->

	<section id="tabs" class="project-tab">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<nav>
						<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
							<a class="nav-item nav-link active" id="nav-home-tab"
								data-toggle="tab" href="#nav-home" role="tab"
								aria-controls="nav-home" aria-selected="true">영양제 추천</a>
						</div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-home"
							role="tabpanel" aria-labelledby="nav-home-tab">
							<table class="table">
								<thead>
									<tr>
										<!--  데이터를 요청해줄 버튼 -->
										<th>이미지</th>
										<th>이름</th>
										<th>타입</th>
									</tr>
								</thead>
								<tbody>

									<tr>


										<td colspan="2">
											<!--  사용자프로필 정보를 띄어줄 공간 -->
											<div id="recommendNtrients">
												<%
												NutrientsDAO nutDao = new NutrientsDAO();
												String[] nutrients = request.getParameterValues("nutrients");
												if (nutrients != null) {
												%>
												<%
												for (String nutNm : nutrients) {
												%>
												<%=nutNm%>: <img src="<%=nutDao.showNutImg(nutNm)%>">
												<%
												}
												}
												%>

											</div>
										</td>

									</tr>

								</tbody>
							</table>
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