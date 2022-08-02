<%@page import="ikujo.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>밥줘 영양줘</title>



<!-- Favicon -->
<link rel="icon" href="img/yerimimg/logoimg.ico">

<!-- Core Stylesheet -->
<link href="style.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="css/responsive/responsive.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- <script language="javascript">
  function showNutients() { window.open("MainNtrients.jsp", "showNutients", "width=400, height=300, left=100, top=50"); }
  </script>
 -->

<!-- 폰트 적용 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Dongle:wght@400;700&display=swap"
	rel="stylesheet">

<!-- 폰트 스타일 적용 -->
<style>
* {
	font-family: 'Dongle', sans-serif;
}

.kimch {
	
}
</style>
</head>

<link href="Main.css" rel="stylesheet">

<body>

	<%@ include file="./include.jsp"%>

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area" style="background-image: url(img/메인5.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center"></div>
				</div>
			</div>
		</div>
	</div>

	<div style="padding: 20px"></div>

	<!-- 	<div class="breadcumb-nav">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-home" aria-hidden="true"></i> 홈</a></li>
							<li class="breadcrumb-item"><a href="#"></a></li>
							<li class="breadcrumb-item active" aria-current="page">Single
								Post Blog</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div> -->
	<!-- ****** Breadcumb Area End ****** -->

	<!-- ****** Welcome Post Area Start ****** -->





	<!-- 검색창  -->

	<p calss="kimch" style="text-align: center; font-size : 100px" >내 몸은 내가 지킨다...</p>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<img src ="https://health.chosun.com/site/data/img_dir/2022/03/03/2022030302148_0.jpg">
	
	
	<div>
	<<h3 style="text-align: center">step 1</h3>
	<p style="text-align: center; font-size : 40px">개인별 식단 추천</p>
	<p style="text-align: center; font-size : 25px">개인의 영양소를 고려한 식단 추천!</p>
	<h3 style="text-align: center">step 2 </h3>
	<p style="text-align: center; font-size : 40px">영양제 추천</p>
	<p style="text-align: center; font-size : 25px">음식에서 얻기힘든 영양소는 영양제를 통해!</p>
	<h3 style="text-align: center">step 3</h3>
	<p style="text-align: center; font-size : 40px">만남서비스</p>
	<p style="text-align: center; font-size : 25px">미모의 여성이 대기하고 있습니다!</p>
	</div>










	<!-- ****** Welcome Area End ****** -->

	<!-- ****** Categories Area Start ****** -->
	<section class="categories_area clearfix" id="about">
		<div class="container">
			<div class="row">
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single_catagory wow fadeInUp" data-wow-delay=".3s">
						<img src="./img/음식.jpg" alt="">
						<div class="catagory-title">
							<a id="food" href="#">
								<h5 id="foodtext">음식</h5>
							</a>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single_catagory wow fadeInUp" data-wow-delay=".6s">
						<img src="./img/디저트.jpg" alt="">
						<div class="catagory-title">
							<a id="dessert" href="#">
								<h5 id="desserttext">디저트</h5>
							</a>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single_catagory wow fadeInUp" data-wow-delay=".9s">
						<img src="./img/영양보충제.jpg" alt="">
						<div class="catagory-title">
							<a id="nutrients" href="#">
								<h5 id="nutrientstext">영양 보충제</h5>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div id="show"></div>
	<!-- ****** Categories Area End ****** -->


	<script type="text/javascript">
	document.querySelector('#nutrients').addEventListener('click', function () {
            if ($('#nutrientstext').text() == '영양 보충제') {
                $('#nutrientstext').text('닫기')
                showNutrients()
            } else {
                $('#nutrientstext').text('영양 보충제')
                $("#show").empty()
             }
    })
    
    function showNutrients() {
  $("#show").innerHtml
    $.ajax({
        type : "GET", 
        url : "./MainNtrients.jsp",        
        dataType : "html",
        error : function(){
            alert("통신실패!!!!");
        },
        success : function(Parse_data){
            $("#show").append(Parse_data); //div에 받아온 값을 넣는다.
        }
         
    });
    }

/*------------------------음식--------------------------------------------------  */
	
	document.querySelector('#food').addEventListener('click', function () {
        if ($('#foodtext').text() == '음식') {
            $('#foodtext').text('닫기')
            showFoods()
        } else {
            $('#foodtext').text('음식')
            $("#show").empty()
         }
})

	function showFoods() {
  $("#show").innerHtml
    $.ajax({
        type : "GET", 
        url : "./MainFood.jsp",        
        dataType : "html",
        error : function(){
            alert("통신실패!!!!");
        },
        success : function(Parse_data){
            $("#show").append(Parse_data); //div에 받아온 값을 넣는다.
        }
         
    });
    }
	
	
/*------------------------간식--------------------------------------------------  */
document.querySelector('#dessert').addEventListener('click', function () {
        if ($('#desserttext').text() == '디저트') {
            $('#desserttext').text('닫기')
            showDessert()
        } else {
            $('#desserttext').text('디저트')
            $("#show").empty()
         }
})

function showDessert() {
  $("#show").innerHtml
    $.ajax({
        type : "GET", 
        url : "./MainDessert.jsp",        
        dataType : "html",
        error : function(){
            alert("통신실패!!!!");
        },
        success : function(Parse_data){
            $("#show").append(Parse_data); //div에 받아온 값을 넣는다.
        }
         
    });
    }
	
	
</script>


	<!-- ****** Instagram Area Start ****** -->
	<div
		class="instargram_area owl-carousel section_padding_100_0 clearfix"
		id="portfolio">
		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="img/instagram-img/1.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="img/instagram-img/2.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="img/instagram-img/3.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="img/instagram-img/4.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="img/instagram-img/5.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="img/instagram-img/6.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="img/instagram-img/1.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Instagram Item -->
		<div class="instagram_gallery_item">
			<!-- Instagram Thumb -->
			<img src="img/instagram-img/2.jpg" alt="">
			<!-- Hover -->
			<div class="hover_overlay">
				<div class="yummy-table">
					<div class="yummy-table-cell">
						<div class="follow-me text-center">
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Our Creative Portfolio Area End ****** -->




	<div class="container">
		<div class="row">
			<div class="col-12">
				<!-- Copywrite Text -->
				<div class="copy_right_text text-center">
					<p>
						메뉴 추천 | 영양보충제 추천 <i class="fa fa-heart-o" aria-hidden="true"></i>
						by <a href="Main.jsp" target="_blank">밥줘 영양줘</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	</footer>

	<!-- ****** Footer Menu Area End ****** -->

	<!-- Jquery-2.2.4 js -->
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