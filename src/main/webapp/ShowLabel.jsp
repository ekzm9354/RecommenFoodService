<%@page import="ikujo.model.ShowFoodDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ikujo.model.FoodDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
<style>
canvas {
	width: 300px;
	height: 400px;
}
</style>
</head>
<body>
	<%
	String id=request.getParameter("id"); 
	ArrayList<ShowFoodDTO> foodList =new FoodDAO().showFoodId(id);
	int gogi=0;
	int gook=0;
	int myun=0;
	int tigim=0;
	int gita=0;
    int bbang=0;
	for(ShowFoodDTO dto:foodList){
	 if(dto.getLabel().equals("고기류")){
		 gogi++;
	 }
	 else if (dto.getLabel().equals("국류")){
		 gook++;
	 }
	 else if (dto.getLabel().equals("면류")){
		 myun++;
	 }
	 else if (dto.getLabel().equals("튀김류")){
		 tigim++;
	 }
	 else if (dto.getLabel().equals("기타류")){
		 gita++;
	 }
	 else if (dto.getLabel().equals("빵류")){
		 bbang++;
	 }

	}
	%>
	dkjdkdk
	<canvas id="myChart" width="400" height="400"></canvas>
	<script> 
const ctx = document.getElementById('myChart').getContext('2d');
const myChart = new Chart(ctx, {
    type: 'pie', // 차트의 형태 (bar, line, pie)
    data: { // 차트에 들어갈 데이터
        labels: ['고기류', '국류', '면류', '튀김류', '빵류', '기타류'],
        // labels -> x축에 들어갈 데이터
        datasets: [{
            label: '# of Votes', // 차트제목
            data: [<%=gogi%>, <%=gook%>, <%=myun%>, <%=tigim%>, <%=bbang%>, <%=gita%>],
            // data -> x축 라벨에 대응되는 데이터 값
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});
</script>
</body>
</html>