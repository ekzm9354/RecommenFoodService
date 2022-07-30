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



</head>

<link href="Main.css" rel="stylesheet">

<body>

	<%@ include file="./include.jsp"%>
	
		<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area"
		style="background-image: url(img/메인5.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>메인페이지</h2>
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

    <!-- ****** Welcome Post Area Start ****** -->
    <section class="welcome-post-sliders owl-carousel">

        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/food-img/음식1.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#"><!-- May 19, 2017 --></a>
                    <a href="#"><!-- 5 Comment --></a>
                </div>
                <a href="#">
                    <h5><!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street --></h5>
                </a>
            </div>
        </div>
        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/food-img/음식2.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#"><!-- May 19, 2017 --></a>
                    <a href="#"><!-- 5 Comment --></a>
                </div>
                <a href="#">
                    <h5><!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street --></h5>
                </a>
            </div>
        </div>
        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/food-img/음식3.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#"><!-- May 19, 2017 --></a>
                    <a href="#"><!-- 5 Comment --></a>
                </div>
                <a href="#">
                    <h5><!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street --></h5>
                </a>
            </div>
        </div>
        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/food-img/음식4.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#"><!-- May 19, 2017 --></a>
                    <a href="#"><!-- 5 Comment --></a>
                </div>
                <a href="#">
                    <h5><!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street --></h5>
                </a>
            </div>
        </div>
        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/food-img/음식5.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#"><!-- May 19, 2017 --></a>
                    <a href="#"><!-- 5 Comment --></a>
                </div>
                <a href="#">
                    <h5><!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street --></h5>
                </a>
            </div>
        </div>
        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/food-img/음식6.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#"><!-- May 19, 2017 --></a>
                    <a href="#"><!-- 5 Comment --></a>
                </div>
                <a href="#">
                    <h5><!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street --></h5>
                </a>
            </div>
        </div>
        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/food-img/음식7.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#"><!-- May 19, 2017 --></a>
                    <a href="#"><!-- 5 Comment --></a>
                </div>
                <a href="#">
                    <h5><!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street --></h5>
                </a>
            </div>
        </div>
        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/food-img/음식8.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#"><!-- May 19, 2017 --></a>
                    <a href="#"><!-- 5 Comment --></a>
                </div>
                <a href="#">
                    <h5><!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street --></h5>
                </a>
            </div>
        </div>
        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/food-img/음식9.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#"><!-- May 19, 2017 --></a>
                    <a href="#"><!-- 5 Comment --></a>
                </div>
                <a href="#">
                    <h5><!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street --></h5>
                </a>
            </div>
        </div>
        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/food-img/음식10.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#"><!-- May 19, 2017 --></a>
                    <a href="#"><!-- 5 Comment --></a>
                </div>
                <a href="#">
                    <h5><!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street --></h5>
                </a>
            </div>
        </div>
        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/food-img/음식11.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#"><!-- May 19, 2017 --></a>
                    <a href="#"><!-- 5 Comment --></a>
                </div>
                <a href="#">
                    <h5><!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street --></h5>
                </a>
            </div>
        </div>
        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/food-img/음식12.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#"><!-- May 19, 2017 --></a>
                    <a href="#"><!-- 5 Comment --></a>
                </div>
                <a href="#">
                    <h5><!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street --></h5>
                </a>
            </div>
        </div>
        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/food-img/음식13.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#"><!-- May 19, 2017 --></a>
                    <a href="#"><!-- 5 Comment --></a>
                </div>
                <a href="#">
                    <h5><!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street --></h5>
                </a>
            </div>
        </div>
        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/food-img/음식14.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#"><!-- May 19, 2017 --></a>
                    <a href="#"><!-- 5 Comment --></a>
                </div>
                <a href="#">
                    <h5><!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street --></h5>
                </a>
            </div>
        </div>
        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/food-img/음식15.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#"><!-- May 19, 2017 --></a>
                    <a href="#"><!-- 5 Comment --></a>
                </div>
                <a href="#">
                    <h5><!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street --></h5>
                </a>
            </div>
        </div>
        <!-- Single Slide -->
        <div class="welcome-single-slide">
            <!-- Post Thumb -->
            <img src="img/food-img/음식16.jpg" alt="">
            <!-- Overlay Text -->
            <div class="project_title">
                <div class="post-date-commnents d-flex">
                    <a href="#"><!-- May 19, 2017 --></a>
                    <a href="#"><!-- 5 Comment --></a>
                </div>
                <a href="#">
                    <h5><!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street --></h5>
                </a>
            </div>
        </div>


    </section>
    <!-- ****** Welcome Area End ****** -->

    <!-- ****** Categories Area Start ****** -->
    <section class="categories_area clearfix" id="about">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single_catagory wow fadeInUp" data-wow-delay=".3s">
                        <img src="./img/음식.jpg" alt="">
                        <div class="catagory-title">
                            <a href="#">
                                <h5>음식</h5>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single_catagory wow fadeInUp" data-wow-delay=".6s">
                        <img src="./img/디저트.jpg" alt="">
                        <div class="catagory-title">
                            <a href="#">
                                <h5>디저트</h5>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single_catagory wow fadeInUp" data-wow-delay=".9s">
                        <img src="./img/영양보충제.jpg" alt="">
                        <div class="catagory-title">
                            <a href="#" onclick="showNutients()">
                            <h5> 영양 보충제 </h5>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div id="show"> 여기에 영양제 나옴 </div>
    <!-- ****** Categories Area End ****** -->
<script type="text/javascript">

function showNutients() { 
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


</script>
                      

    <!-- ****** Instagram Area Start ****** -->
    <div class="instargram_area owl-carousel section_padding_100_0 clearfix" id="portfolio">

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/1.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
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
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
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
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
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
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
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
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
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
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
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
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
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
                            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a>
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
                        <p>메뉴 추천 | 영양보충제 추천 <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="Main.jsp" target="_blank">밥조 영양조</a></p>
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