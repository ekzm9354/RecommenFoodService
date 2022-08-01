<%@page import="ikujo.model.ShowFoodDTO"%>
<%@page import="ikujo.model.ShowFoodDAO"%>
<%@page import="java.util.ArrayList"%>
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
/* .table {
margin-left: auto; 
margin-right: auto;

} */
.table th {
	text-align: center;
}
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
</head>
<body>
	<%
	String id = request.getParameter("id");
	ArrayList<ShowFoodDTO> foodList = new ShowFoodDAO().showFoodId(id);
	%>

	<section id="tabs" class="project-tab">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<canvas id="myChart" width="1000" ; height="600"; ></canvas>
				</div>
			</div>
		</div>
	</section>

	<script>
	var ctx = document.getElementById('myChart').getContext('2d');
	var myChart = new Chart(ctx, {
	    type: 'bar', // 차트의 형태 (bar, line, pie)
	    data: { // 차트에 들어갈 데이터
	        labels: [
	        <%for (ShowFoodDTO dto : foodList) {%>
	        '<%=dto.getUdate()%>',
	        <%}%>
	       ],
	        // labels -> x축에 들어갈 데이터
	        datasets: [
	        	{
	            label: 'Kcal' , // 차트제목
	            data: [
	            		<%for(ShowFoodDTO dto : foodList) {%>
	            		<%=dto.getKcal()%>,
	            		<%}%> 
	            		]
	        	},		  
	            { 
	        	label: 'Carbohydrate' , // 차트제목
	            data: [
	            		<%for (ShowFoodDTO dto : foodList) {%>
                        <%=dto.getCarbohydrate()%>,
                        <%}%>
	            		]
	        	},		  
	            {
	        	label: 'protein' , // 차트제목
	            data: [
	            		<%for (ShowFoodDTO dto : foodList) {%>
                        <%=dto.getProtein()%>,
                        <%}%>
	            		]
	        	},		  
	            { 
	        	label: 'fat' , // 차트제목
	            data: [
	            		<%for (ShowFoodDTO dto : foodList) {%>
                        <%=dto.getFat()%>,
                        <%}%>
	            		]
	        	},
	            {
	        	label: 'sugar' , // 차트제목
	            data: [
	            		<%for (ShowFoodDTO dto : foodList) {%>
                        <%=dto.getSugar()%>,
                        <%}%>
	            		]
	        	},
	            { 
	        	label: 'ca' , // 차트제목
	            data: [
	            		<%for (ShowFoodDTO dto : foodList) {%>
                        <%=dto.getCa()%>,
                        <%}%>
	            		]
	        	},
	            {
	        	label: 'fe' , // 차트제목
	            data: [
	            		<%for (ShowFoodDTO dto : foodList) {%>
                        <%=dto.getFe()%>,
                        <%}%>
                        ]
	        	},
                {
	        	label: 'mg' , // 차트제목
	            data: [
	            		<%for (ShowFoodDTO dto : foodList) {%>
                        <%=dto.getMg()%>,
                        <%}%>
                        ]
	        	},
	            {
	        	label: 'na' , // 차트제목
	            data: [
	            		<%for (ShowFoodDTO dto : foodList) {%>
                       	<%=dto.getNa()%>,
                       	<%}%>
                        ]
	        	},
                { 
	        	label: 'k' , // 차트제목
	            data: [
	            		<%for (ShowFoodDTO dto : foodList) {%>
                        <%=dto.getK()%>,
                        <%}%>
                       ]
	        	},
	            {
	        	label: 'vitaminB' , // 차트제목
	            data: [
	            	  	<%for (ShowFoodDTO dto : foodList) {%>
                      	<%=dto.getVitaminB()%>,	
                      	<%}%>
                      ]
	        	},
	            {
	        	label: 'vitaminC' , // 차트제목
	            data: [
	            		<%for (ShowFoodDTO dto : foodList) {%>
                    	<%=dto.getVitaminC()%>,
                     	<%}%>
                      ]
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