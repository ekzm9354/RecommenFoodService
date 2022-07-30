<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<!-- css 연결 -->
<link href="Chat.css" rel="stylesheet">
<body>
<%@ include file="./include.jsp"%>
	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area"
		style="background-image: url(img/bg-img/breadcumb.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>만남의 장</h2>
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
							<li class="breadcrumb-item"><a href="#">만남의 장</a></li>
							<!-- <li class="breadcrumb-item active" aria-current="page">Single
								Post Blog</li> -->
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Breadcumb Area End ****** -->
	<link rel="stylesheet"
		href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">

	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="chat-list-box">
						<div class="head-box">
							<ul class="list-inline text-left d-inline-block float-left">
								<li><img src="https://i.ibb.co/fCzfFJw/person.jpg" alt=""
									width="40px"></li>
							</ul>
							<ul
								class="flat-icon list-inline text-right d-inline-block float-right">
								<li><a href="#"> <i class="fas fa-search"></i>
								</a></li>
								<li><a href="#"> <i class="fas fa-ellipsis-v"></i>
								</a></li>
							</ul>
						</div>

						<div class="chat-person-list">
							<ul class="list-inline">
								<li><a href="#" class="flip"> <img
										src="https://i.ibb.co/6JpcfrK/p4.png" alt=""> <span>
											Naveen Mandwariya</span> <span class="chat-time">12:00 Am</span>
								</a></li>
								<li><a href="#" class="flip"> <img
										src="https://i.ibb.co/vdyYVvp/p1.png" alt=""> <span>
											Sunena Daksh </span> <span class="chat-time">11:45 Pm</span>
								</a></li>
								<li><a href="#" class="flip"> <img
										src="https://i.ibb.co/vY406Hp/p3.png" alt=""> <span>
											Arpit Singh </span> <span class="chat-time">12:15 Pm</span>
								</a></li>
								<li><a href="#" class="flip"> <img
										src="https://i.ibb.co/KhYZwPg/p2.png" alt=""> <span>
											Arpita </span> <span class="chat-time">09:10 Am</span>
								</a></li>
								<li><a href="#" class="flip"> <img
										src="https://i.ibb.co/ChGLXKZ/p5.png" alt=""> <span>
											Sorasth parmar </span> <span class="chat-time">02:00 Pm</span>
								</a></li>
								<li><a href="#" class="flip"> <img
										src="https://i.ibb.co/KDZymW5/p6.png" alt=""> <span>
											Sushmita </span> <span class="chat-time">08:00 Am</span>
								</a></li>
							</ul>
						</div>

					</div>
				</div>
				<!-- col-md-4 closed -->

				<div class="col-md-8">
					<div class="message-box">
						<div class="head-box-1">

							<ul
								class="msg-box list-inline text-left d-inline-block float-left">
								<li><i class="fas fa-arrow-left" id="back"></i></li>
								<li><img src="https://i.ibb.co/fCzfFJw/person.jpg" alt=""
									width="40px"> <span> Naveen mandwariya </span> <br>
									<small class="timee"> 12:45 Pm </small></li>
							</ul>

							<ul
								class="flat-icon list-inline text-right d-inline-block float-right">
								<li><a href="#"> <i class="fas fa-video"></i>
								</a></li>
								<li><a href="#"> <i class="fas fa-camera"></i>
								</a></li>
								<li><a href="#" id="dset"> <i class="fas fa-ellipsis-v"></i>
								</a>
									<div class="setting-drop">
										<ul class="list-inline">
											<li><a href="#"> My Profile</a></li>
											<li><a href="#"> Setting </a></li>
											<li><a href="#"> Privacy Policy </a></li>
											<li><a href="#"> Hidden chat </a></li>
											<li><a href="#"> Logout </a></li>
										</ul>
									</div></li>
							</ul>

						</div>

						<div class="msg_history">
							<div class="incoming_msg">
								<div class="incoming_msg_img">
									<img src="https://ptetutorials.com/images/user-profile.png"
										alt="sunil">
								</div>
								<div class="received_msg">
									<div class="received_withd_msg">
										<p>Hi, How are you ?</p>
										<span class="time_date"> 11:01 AM | June 9</span>
									</div>
								</div>
							</div>
							<div class="outgoing_msg">
								<div class="sent_msg">
									<p>Hello, i am fine thankyou, what about you ?</p>
									<span class="time_date"> 11:01 AM | June 9</span>
								</div>
							</div>
							<div class="incoming_msg">
								<div class="incoming_msg_img">
									<img src="https://ptetutorials.com/images/user-profile.png"
										alt="sunil">
								</div>
								<div class="received_msg">
									<div class="received_withd_msg">
										<p>I am also good thankyou!</p>
										<span class="time_date"> 11:01 AM | Yesterday</span>
									</div>
								</div>
							</div>
							<div class="outgoing_msg">
								<div class="sent_msg">
									<p>ok</p>
									<span class="time_date"> 11:01 AM | Today</span>
								</div>
							</div>
							<div class="incoming_msg">
								<div class="incoming_msg_img">
									<img src="https://ptetutorials.com/images/user-profile.png"
										alt="sunil">
								</div>
								<div class="received_msg">
									<div class="received_withd_msg">
										<p>What's going on ?</p>
										<span class="time_date"> 11:01 AM | Today</span>
									</div>
								</div>
							</div>
						</div>

						<div class="send-message">
							<form action="" method="">
								<textarea cols="10" rows="2" class="form-control"
									placeholder="Type your message here ..."> </textarea>
								<ul class="list-inline">
									<li><a href="#" id="attach"> <i
											class="fas fa-paperclip"></i>
									</a>
										<div class="attachement">
											<ul class="list-inline">
												<li><a href="#"> <i class="fas fa-file"></i>
												</a></li>
												<li><a href="#"> <i class="fas fa-camera"></i>
												</a></li>
												<li><a href="#"> <i class="fas fa-image"></i>
												</a></li>
												<li><a href="#"> <i class="far fa-play-circle"></i>
												</a></li>
												<li><a href="#"> <i class="fas fa-map-marker-alt"></i>
												</a></li>
												<li><a href="#"> <i class="fas fa-id-card"></i>
												</a></li>
											</ul>
										</div></li>
									<li><i class="fas fa-paper-plane"></i></li>
								</ul>
							</form>
						</div>


					</div>
				</div>

			</div>
		</div>
	</section>
	
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


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

	<script>
		$("#attach").click(function() {
			$(".attachement").toggle();
		});
	</script>
	<script>
		$("#dset").click(function() {
			$(".setting-drop").toggle('1000');
		});
	</script>

	<script>
		$(document).ready(function() {
			$(".flip").click(function() {
				$(".message-box").show("slide", {
					direction : "right"
				}, 10000);
			});
		});
	</script>
	<script>
	$(document).ready(function(){
    $("#back").click(function(){
        $(".message-box").hide("slide", { direction: "left" }, 10000);
    });
});
 </script>
</body>
</html>