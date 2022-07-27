<%@page import="java.util.ArrayList"%>
<%@page import="ikujo.model.FoodDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
    <style>
        canvas{
            width: 300px !important; /*!important 무조건 실행되게하는 */
            height: 400px !important;
        }


    </style>
</head>
<body>
	<%-- <%!
	String id = "1234";
	ArrayList<String> foodList =new FoodDAO().showFoodId(id);
	public int count(String label) {
		int i =0;
		for(String foodNm:foodList){
			if(foodNm.equals(label)){
				i++;
			}}
		return i;
	}%>
	
	<% 
	for(String foodNm:foodList){
	 out.print(foodNm);
	}
	%>
 --%>
	 <canvas id="myChart" width="400" height="400"></canvas>
<script> 
const ctx = document.getElementById('myChart').getContext('2d');
const myChart = new Chart(ctx, {
    type: 'pie', // 차트의 형태 (bar, line, pie)
    data: { // 차트에 들어갈 데이터
        labels: ['왜아돼', '이명훈', 'Yellow', 'Green', 'Purple', 'Orange'],
        // labels -> x축에 들어갈 데이터
        datasets: [{
            label: '# of Votes', // 차트제목
            data: [12, 19, 3, 5, 2, 3],
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