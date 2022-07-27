<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
</head>
<body>
<%@ include file="./include.jsp"%>
    <!--  데이터를 요청해줄 버튼 -->
    <button type="button" id="showFood">등록된음식보기</button>
    <button type="button">전체영양소보기</button>
	
	<!--  사용자프로필 정보를 띄어줄 공간 -->
    <div id="userprofile"></div>

    <script type="text/javascript" >
 $("#showFood").click(function(){
        $.ajax({
            type : "GET", //전송방식을 지정한다 (POST,GET)
            url : "http://localhost:8081/ikujo/ShowFood.jsp?id=<%=1234 %>",        
            		//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
            dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
            error : function(){
                alert("통신실패!!!!");
            },
            success : function(Parse_data){
                $("#userprofile").append(Parse_data); //div에 받아온 값을 넣는다.
                $("#userprofile").append("<button id='remove'>취소</button>");
            }
             
        });
    });
 $(document).on('click','#remove',function(){
     $("#userprofile").children().remove()
 })  
    </script>
</body>
</html>