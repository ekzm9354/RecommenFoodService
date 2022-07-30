<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥줘 영양줘</title>
<!-- Favicon -->
<link rel="icon" href="img/yerimimg/logoimg.ico">
<style type="text/css">
.project-tab{
margin-left:auto; 
margin-right:auto;
}

</style>

</head>
<body>
<%@ include file="./include.jsp"%>

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area"
		style="background-image: url(img/yerimimg/foodcatebanner.jpg);"> <!--여기 사진 변경하기   -->
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>만든이</h2>
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
							<li class="breadcrumb-item"><a href="ikujoteam.jsp"> 만든이 </a></li>
							<!-- <li class="breadcrumb-item active" aria-current="page">Single
								Post Blog</li> -->
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Breadcumb Area End ****** -->
	
	<!-- 여기부터는 만든사람 사진 , 이름 -->
<!-- 
	<section id="tabs" class="project-tab">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div
						style="width: 200px; height: 150px; border: 1px solid red; float: left; margin-right: 10px;">
						첫번째 영역: 왼쪽에 위치시킴 => float:left 오른쪽에 바깥여백을 줌 => margin-right:10px;
						여기에 그림이나 글자 또는 광고 등을 넣음</div>
					<div
						style="width: 200px; height: 150px; border: 1px solid green; float: left;">
						두번째 영역: 첫번째 영역 옆에 나란히 붙임 => float:left 여기에 그림이나 글자 또는 광고 등을 넣음</div>
						

				</div>
			</div>
		</div>
	</section>
 -->
	<div class="col-md-12 col-md-offset-0">
		<ul class="timeline animate-box">
			<li class="animate-box">
				<div class="timeline-badge"
					style="background-image: url(img/yerimimg/couple-1.jpg);"></div>
				<div class="timeline-panel">
					<div class="timeline-heading">
						<h3 class="timeline-title">First We Meet</h3>
						<span class="date">December 25, 2015</span>
					</div>
					<div class="timeline-body">
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in Bookmarksgrove right at the coast of the
							Semantics, a large language ocean.</p>
					</div>
				</div>
			</li>
			<li class="timeline-inverted animate-box">
				<div class="timeline-badge"
					style="background-image: url(img/yerimimg/couple-2.jpg);"></div>
				<div class="timeline-panel">
					<div class="timeline-heading">
						<h3 class="timeline-title">First Date</h3>
						<span class="date">December 28, 2015</span>
					</div>
					<div class="timeline-body">
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in Bookmarksgrove right at the coast of the
							Semantics, a large language ocean.</p>
					</div>
				</div>
			</li>
			<li class="animate-box">
				<div class="timeline-badge"
					style="background-image: url(img/yerimimg/couple-3.jpg);"></div>
				<div class="timeline-panel">
					<div class="timeline-heading">
						<h3 class="timeline-title">In A Relationship</h3>
						<span class="date">January 1, 2016</span>
					</div>
					<div class="timeline-body">
						<p>Far far away, behind the word mountains, far from the
							countries Vokalia and Consonantia, there live the blind texts.
							Separated they live in Bookmarksgrove right at the coast of the
							Semantics, a large language ocean.</p>
					</div>
				</div>
			</li>
		</ul>
	</div>











	<!-- 여기까지는 만든사람 사진 , 이름 -->
	
	
	
	
	
	
	
	
	<div style="margin:100px 0px 100px 0px"></div>
	
		<!--여기부터 하단 사진 맨위스크롤,, -->
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
	<!--여기까지 하단 사진 맨위스크롤,, -->

	
</body>
</html>