<%@page import="java.util.ArrayList"%>
<%@page import="ikujo.model.FoodDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥줘 영양줘</title>
<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon2.ico">
<link href="SelectFood.css" rel="stylesheet">
<!-- html 코드 -->
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->

<!-- html 코드 -->
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link href="FoodMain.css" rel="stylesheet">
</head>
<body>

<%@ include file="./include.jsp"%>

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area"
		style="background-image: url(img/메인5.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>음식 조회</h2>
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
							<li class="breadcrumb-item"><a href="#"></a>음식 조회</li>
							<!-- <li class="breadcrumb-item active" aria-current="page">Single
								Post Blog</li> -->
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Breadcumb Area End ****** -->
	
	<!-- html코드 -->
<form action="SelectFood.do" method="post">
			<div class="container">
		
		<div class="row" style="margin-top:20px">
		    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<form role="form">
					<fieldset>
						<h2> S E A R C H</h2>
						<hr class="colorgraph">
						<div class="form-group">
		                    <h6> 예) 치킨, 샐러드, 파스타와 같이 입력해주세요</h6>
						</div>
						<div class="form-group">
		                    <input name="keyword" type="text" class="form-control input-lg" placeholder="food name" />
						</div>
<!-- 						<span class="button-checkbox">
							<button type="button" class="btn" data-color="info">Remember Me</button>
		                    <input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
							<a href="" class="btn btn-link pull-right">Forgot Password?</a>
						</span> -->
						<hr class="colorgraph">
						<div class="row">
							<div class="col-xs-6 col-sm-6 col-md-6">
		                        <input type="submit" class="btn btn-lg btn-success btn-block" value="S E A R C H" style="
									    margin-left: 0px;
									">
							</div>
<!-- 							<div class="col-xs-6 col-sm-6 col-md-6">
								<a href="" class="btn btn-lg btn-primary btn-block">Register</a>
							</div> -->
						</div>
					</fieldset>
				</form>
			</div>
		</div>

</div>
	</form>	
	<!-- html 코드 -->
<!-- 	<div class="container forget-password">
            <div class="row">
                <div class="col-md-12 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="text-center">
                                <img src="./img/음식 입력.jpg" border="0">
                                <h2 class="text-center">등록할 음식을 조회</h2>
                                <p>치킨, 샐러드, 파스타와 같이 입력하세요</p>
                                <form id="register-form" role="form" autocomplete="off" class="form" method="post"></form>
                                    <div class="form-group">
                                        <div class="input-group">
옵션                                      <select class="form-control" id="sel1">
                                                <option selected="true" disabled="disabled">Please Select Security Question</option>
                                                <option>Which is your favorite movie?</option>
                                                <option>What is your pet's name?</option>
                                                <option>What is the name of your village?</option>
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <form action="SelectFood.do" method="post">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                            <input id="forgetAnswer" name="keyword" placeholder="음식명" class="form-control"  type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input name="btnForget" class="btn btn-lg btn-primary btn-block btnForget" value="조회" type="submit">
                                    </div>
                                    

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
	
<!-- 원래코드 	
	<form action="SelectFood.do" method="post">
	<h2>S E A R C H</h2>
		<div class="textForm">
			<input name="keyword" type="text" class="id" placeholder="음식명"> </input>
		</div>
		<div class="textForm">
			<h6>예)'치킨','샐러드','파스타' 와 같이 입력해주세요</h6>
		</div>
		<input type="submit" class="btn" value="S E A R C H" />
		<input type="text" name="keyword"><br> <input
			type="submit" value="조회하기"> 예)'치킨','샐러드','파스타' 와 같이 입력해주세요
	</form> -->
	
	
	
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
    
    <!-- html js -->
    <script>
    $(function(){
        $('.button-checkbox').each(function(){
    		var $widget = $(this),
    			$button = $widget.find('button'),
    			$checkbox = $widget.find('input:checkbox'),
    			color = $button.data('color'),
    			settings = {
    					on: {
    						icon: 'glyphicon glyphicon-check'
    					},
    					off: {
    						icon: 'glyphicon glyphicon-unchecked'
    					}
    			};

    		$button.on('click', function () {
    			$checkbox.prop('checked', !$checkbox.is(':checked'));
    			$checkbox.triggerHandler('change');
    			updateDisplay();
    		});

    		$checkbox.on('change', function () {
    			updateDisplay();
    		});

    		function updateDisplay() {
    			var isChecked = $checkbox.is(':checked');
    			// Set the button's state
    			$button.data('state', (isChecked) ? "on" : "off");

    			// Set the button's icon
    			$button.find('.state-icon')
    				.removeClass()
    				.addClass('state-icon ' + settings[$button.data('state')].icon);

    			// Update the button's color
    			if (isChecked) {
    				$button
    					.removeClass('btn-default')
    					.addClass('btn-' + color + ' active');
    			}
    			else
    			{
    				$button
    					.removeClass('btn-' + color + ' active')
    					.addClass('btn-default');
    			}
    		}
    		function init() {
    			updateDisplay();
    			// Inject the icon if applicable
    			if ($button.find('.state-icon').length == 0) {
    				$button.prepend('<i class="state-icon ' + settings[$button.data('state')].icon + '"></i> ');
    			}
    		}
    		init();
    	});
    });
    </script>
</body>
</html>