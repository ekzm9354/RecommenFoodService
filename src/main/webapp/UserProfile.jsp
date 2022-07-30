<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

<style type="text/css">
#userprofile{
/* height: 400px;
width: 900px; */
text-align: center;
}
button{
border: 0;
background: transparent;
/* outline: ; */
}

.table th{
text-align: center;
}

</style>
</head>
<body>
<%@ include file="./include.jsp"%>
	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area"
		style="background-image: url(img/yerimimg/profile2.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>유저기록정보</h2>
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
							<li class="breadcrumb-item"><a href="Main.jsp"><i
									class="fa fa-home" aria-hidden="true"></i> 홈</a></li>
									<li class="breadcrumb-item"><a href="UserProfile.jsp">  프로필 </a></li>
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
							<a class="nav-item nav-link active" id="nav-home-tab"
								data-toggle="tab" role="tab"
								aria-controls="nav-home" aria-selected="true">유저섭취내역</a>
						</div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-home"
							role="tabpanel" aria-labelledby="nav-home-tab">
							<table class="table" >
								<thead>
									<tr>
    <!--  데이터를 요청해줄 버튼 -->
										<th> <button type="button" id="showFood">등록된음식보기</button></th>
										<th><button type="button" id="showNutri">전체영양소보기</button></th>
										<th> <button type="button" id="showLabel">카테고리별보기</button></th>
									</tr>
								</thead>
								

									<tr>
									<td colspan="3">
										<!-- 	 사용자프로필 정보를 띄어줄 공간 -->
											<div id="userprofile"></div>
									</td>
								<!-- 	<td id="userprofile"></td> -->
									</tr>

								
							</table>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</section>

	
<%
 	String id =(String)session.getAttribute("id");
%>
    <script type="text/javascript" >
    function deleteTable() {
    	
    
  	  $("#userprofile").children().remove();}
  $("#showLabel").click(function(){ 
	 /* $(document).on('click','#showLabel',function(){ */
       abc= $.ajax({
            type : "GET", //전송방식을 지정한다 (POST,GET)
            url : "http://localhost:8083/ikujo/ShowLabel.jsp?id=<%=id %>",        
            		//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
            dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
            error : function(){
                alert("통신실패!!!!");
            },
            success : function(Parse_data){
            	deleteTable()
                $("#userprofile").append(Parse_data); //div에 받아온 값을 넣는다.
            }
        });
        
    });
 $("#showNutri").click(function(){
        $.ajax({
            type : "GET", 
            url : "http://localhost:8083/ikujo/ShowNutri.jsp?id=<%=id %>",        
            dataType : "html",
            error : function(){
                alert("통신실패!!!!");
            },
            success : function(Parse_data){
            	deleteTable()
                $("#userprofile").append(Parse_data); //div에 받아온 값을 넣는다.
            }
             
        });
    });
 $("#showFood").click(function(){
        $.ajax({
            type : "GET", 
            url : "http://localhost:8083/ikujo/ShowFood.jsp?id=<%=id %>",        
            		
            dataType : "html",
            error : function(){
                alert("통신실패!!!!");
            },
            success : function(Parse_data){
            	
            	deleteTable(); 
                $("#userprofile").append(Parse_data); 
            }
        });
    });
 $("#showFood").ready(function(){
        $.ajax({
            type : "GET", 
            url : "http://localhost:8083/ikujo/ShowFood.jsp?id=<%=id %>",        
            		
            dataType : "html",
            error : function(){
                alert("통신실패!!!!");
            },
            success : function(Parse_data){
            	
            	deleteTable(); 
                $("#userprofile").append(Parse_data); 
            }
        });
    });
    </script>
</body>
</html>