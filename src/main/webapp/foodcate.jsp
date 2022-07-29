<%@page import="ikujo.model.FoodcateDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ikujo.model.FoodDAO"%>
<%@page import="ikujo.model.FoodcateDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <style type="text/css">
/* @font-face	{
font-family : "fontyo";
src=url("./fonts/210font.ttf");} */
	/* a.active-color{ background-color : #5F00FF; } */
	/* a:visited{color: white;} */



</style> -->
<script src="jquery-3.6.0.min.js"></script>

<link rel="stylesheet" href="../css/yerim/yerimy.css">

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<%@ include file="./include.jsp"%>

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area"
		style="background-image: url(img/yerimimg/foodcatebanner.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>음식 카테고리</h2>
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
							<li class="breadcrumb-item"><a href="./Main.jsp"><i
									class="fa fa-home" aria-hidden="true"></i> 홈</a></li>
							<li class="breadcrumb-item"><a href="#"> 음식 카테고리 </a></li>
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
							<a class="nav-item nav-link active keyword" id="rice_tab" data-toggle="tab" href="#rice" role="tab" 
							aria-controls="rice" aria-selected="true">밥류</a> 
							<a class="nav-item nav-link keyword" id="soup_tab" data-toggle="tab" href="#soup" role="tab"
							aria-controls="soup" aria-selected="false">국류</a> 
							<a class="nav-item nav-link keyword" id="noodle_tab" data-toggle="tab" href="#noodle" role="tab"
							aria-controls="noodle" aria-selected="false">면류</a> 
							<a class="nav-item nav-link keyword" id="bread_tab" data-toggle="tab" href="#bread" role="tab" aria-controls="bread"
							aria-selected="false">빵류</a> 
							<a class="nav-item nav-link keyword" id="meat_tab" data-toggle="tab" href="#meat" role="tab" aria-controls="meat"
							aria-selected="false">고기류</a> 
							<a class="nav-item nav-link keyword" id="fried_tab" data-toggle="tab" href="#fried" role="tab" aria-controls="fried"
							aria-selected="false">튀김류</a> 
							<a class="nav-item nav-link keyword" id="others_tab" data-toggle="tab" href="#others" role="tab"
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
									</tr>
								</thead>
								<tbody id="foods">

									<%
									String key = "밥류";
									ArrayList<FoodcateDTO> riceList = (ArrayList) new FoodcateDAO().selectCate(key);
									for (int i = 0; i < riceList.size(); i++) {
									%>
									<tr>
										<td>이미지공간</td>
										<td><%=riceList.get(i).getFoodnm()%></td>
										<td><%=riceList.get(i).getKcal()%></td>
										<td><%=riceList.get(i).getCarbohydrate()%></td>
										<td><%=riceList.get(i).getProtein()%></td>
										<td><%=riceList.get(i).getFat()%></td>
									</tr>
									<%
									}
									%>
									<!--   <tr>
                                            <td><a href="#">여기는 음식사진 </a></td>
                                            <td>Moe</td>
                                            <td>mary@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 3</a></td>
                                            <td>Dooley</td>
                                            <td>july@example.com</td>
                                            
                                        </tr> 위에꺼 반복시키면 이건 필요없을거같음 ~~! -->
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
			$.ajax({
				/* 어디로 보낼건지? */
				url : "FoodCate2",
				/* 어떤 데이터를 보낼 것인지? */
				data : {
					keyword : keyword
				},
				/* 데이터를 어떤 형태로 받아올 것인지 */
				dataType : "json",
				/* 성공 시 */
				success : function(key) {
					console.log(key)
					makeTable(key)
				},
				/* 실패 시 */
				error : function(e) {
					alert('실패');
					console.log(e);
				}

			})
		});
		
	
		function makeTable(key) {
				$("#foods").children().remove();
			for (var i = 0; i < key.length; i++) {
				console.log("g")
				$("#foods").append("<tr> </tr>");
		 		$("#foods tr").last().append("<td>" + "이미지공간" + "</td>");
		 		$("#foods tr").last().append("<td>" + key[i].foodnm + "</td>");
				$("#foods tr").last().append("<td>" + key[i].kcal + "</td>");
				$("#foods tr").last().append("<td>" + key[i].carbohydrate + "</td>");
				$("#foods tr").last().append("<td>" + key[i].protein + "</td>");
				$("#foods tr").last().append("<td>" + key[i].fat + "</td>"); 
			}
		}
		
		$('.rice_tab').on('click', function() {
			
			
			
		}) 
	</script>
</body>
</html>