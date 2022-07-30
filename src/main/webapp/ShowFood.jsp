<%@page import="ikujo.model.ShowFoodDAO"%>
<%@page import="ikujo.model.ShowFoodDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

.table {

margin-left: auto; 
margin-right: auto;

}
.table th,td {
text-align: center;}

</style>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<%
	String id = request.getParameter("id");
	ArrayList<ShowFoodDTO> foodList = new ShowFoodDAO().showFoodId(id);
	%>
	<section id="tabs" class="project-tab">
            <div class="container">
                <div class="row">
                    <div class="col-md-12" style="width:1200px">
                        <!-- <nav>
                            <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Project Tab 1</a>
                                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Project Tab 2</a>
                                <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Project Tab 3</a>
                            </div>
                        </nav> -->
                        
                        
                        
                        <!--여기부터  -->
<!--                         <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
 -->                                
 								<table class="table" cellspacing="0">
                                   
                                        <tr >
                                            <th>날짜</th>
                                            <th>음식명</th>
                                     	</tr>
                                
                                  
                                    <%for(ShowFoodDTO dto : foodList) {%>
                                    	<tr > 
                                            <td><%=dto.getUdate() %></td>
                                            <td><%=dto.getFoodNm() %></td>
                                        </tr>
                                        <%} %>
                                   
                                       
                                   
                                </table>
                     <!--        </div>
                           
                        </div>
                         -->
                          <!--여기까지  -->
                    </div>
                </div>
            </div>
        </section>
        
        
        

        
 
</body>
</html>