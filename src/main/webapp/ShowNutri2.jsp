<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="ikujo.model.referenceDTO"%>
<%@page import="ikujo.model.referenceDAO"%>
<%@page import="java.math.BigDecimal"%>
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
	String id = "zxc";/* request.getParameter("id"); */
	int udate =Integer.parseInt(request.getParameter("udate")); 
	ArrayList<referenceDTO> userAvgNutri = new ShowFoodDAO().userAvgNutri(id);
	referenceDTO referDto = new referenceDAO().referData(id);
	
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
	<%
	
	ArrayList<Integer> Kcal = new ArrayList<Integer>();
	ArrayList<Integer> Carbohydrate = new ArrayList<Integer>();
	ArrayList<Integer> Protein = new ArrayList<Integer>();
	ArrayList<Integer> Fat = new ArrayList<Integer>();
	ArrayList<Integer> Sugar = new ArrayList<Integer>();
	ArrayList<Integer> Ca = new ArrayList<Integer>();
	ArrayList<Integer> Fe = new ArrayList<Integer>();
	ArrayList<Integer> Mg = new ArrayList<Integer>();
	ArrayList<Integer> Na = new ArrayList<Integer>();
	ArrayList<Integer> K = new ArrayList<Integer>();
	ArrayList<Integer> VitaminB = new ArrayList<Integer>();
	ArrayList<Integer> VitaminC = new ArrayList<Integer>();
	for(referenceDTO dto : userAvgNutri) {
		Kcal.add(dto.getKcal().intValue());
		Carbohydrate.add( dto.getCarbohydrate().intValue());
		Protein.add( dto.getProtein().intValue());
		Fat.add( dto.getFat().intValue());
		Sugar.add(dto.getSugar().intValue());
		Ca.add( dto.getCa().intValue());
		Fe.add( dto.getFe().intValue());
		Mg.add(dto.getMg().intValue());
		Na.add(dto.getNa().intValue());
		K.add(dto.getK().intValue());
		VitaminB.add(dto.getVitaminB().intValue());
		VitaminC.add(dto.getVitaminC().intValue());
		}%>
		
	var ctx = document.getElementById('myChart').getContext('2d');
	var myChart = new Chart(ctx, {
	    type: 'line', // 차트의 형태 (bar, line, pie)
	    data: { // 차트에 들어갈 데이터
	        labels: ['Kcal','Carbohydrate','protein','fat','sugar','ca','fe','mg','na','k','vitaminB','vitaminC'
	        
	       ],
	        // labels -> x축에 들어갈 데이터
	        datasets: [
	        	{
	            label: '합' , // 차트제목
	            data: [
	            <%=Kcal.get(udate)%>,
	            <%=Carbohydrate.get(udate)%>,
	            <%=Protein.get(udate)%>,
	            <%=Fat.get(udate)%>,
	            <%=Sugar.get(udate)%>,
	            <%=Ca.get(udate)%>,
	            <%=Fe.get(udate)%>,
	            <%=Mg.get(udate)%>,
	            <%=Na.get(udate)%>,
	            <%=K.get(udate)%>,
	            <%=VitaminB.get(udate)%>,
	            <%=VitaminC.get(udate)%>
	            ],
	           /* 컬러 넣기 */
	            backgroundColor: [
                'rgba(255, 99, 132, 0.2)'],  
           		 borderColor: [
                'rgba(255, 99, 132, 1)']
	        	},
	            {
		            label: 'refer' , // 차트제목
		            data: [
		            <%=referDto.getKcal()%>,
		            <%=referDto.getCarbohydrate()%>,
		            <%=referDto.getProtein()%>,
		            <%=referDto.getFat()%>,
		            <%=referDto.getSugar()%>,
		            <%=referDto.getCa()%>,
		            <%=referDto.getFe()%>,
		            <%=referDto.getMg()%>,
		            <%=referDto.getNa()%>,
		            <%=referDto.getK()%>,
		            <%=referDto.getVitaminB()%>,
		            <%=referDto.getVitaminC()%>
		            ],
		            backgroundColor: [
		                'rgba(153, 102, 255, 0.2)'],
		            borderColor: [
		                'rgba(153, 102, 255, 1)']
	            },
	            
	            
	            ]		  
	           
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