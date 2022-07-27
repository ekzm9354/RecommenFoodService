<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<%@ include file="./include.jsp"%>
<section id="tabs" class="project-tab">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <nav>
                            <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="rice_tab" data-toggle="tab" href="#rice" role="tab" aria-controls="rice" aria-selected="true">밥류</a>|
                                <a class="nav-item nav-link" id="soup_tab" data-toggle="tab" href="#soup" role="tab" aria-controls="soup" aria-selected="false">국류</a>|
                                <a class="nav-item nav-link" id="noodle_tab" data-toggle="tab" href="#noodle" role="tab" aria-controls="noodle" aria-selected="false">면류</a>|
                                <a class="nav-item nav-link" id="bread_tab" data-toggle="tab" href="#bread" role="tab" aria-controls="bread" aria-selected="false">빵류</a>|
                                <a class="nav-item nav-link" id="meat_tab" data-toggle="tab" href="#meat" role="tab" aria-controls="meat" aria-selected="false">고기류</a>|
                                <a class="nav-item nav-link" id="fried_tab" data-toggle="tab" href="#fried" role="tab" aria-controls="fried" aria-selected="false">튀김류</a>|
                                <a class="nav-item nav-link" id="others_tab" data-toggle="tab" href="#others" role="tab" aria-controls="others" aria-selected="false">기타류</a>
                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="rice" role="tabpanel" aria-labelledby="rice_tab">
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>음식 사진</th>
                                            <th>음식 이름</th>
                                            <th>탄수화물</th>
                                            <th>단백질</th>
                                            <th>지방</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                        
                                            <td><img src="">
                                            <!-- <a href="#">Work 1</a> -->
                                            </td>
                                            <td>그레이프 소스 스테이크</td>
                                            <td>00g</td>
                                            <td>11g</td>
                                            <td>22g</td>
                                        </tr>
                                      <!--   <tr>
                                            <td><a href="#">여기는 음식사진 </a></td>
                                            <td>Moe</td>
                                            <td>mary@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 3</a></td>
                                            <td>Dooley</td>
                                            <td>july@example.com</td>
                                            
                                        </tr> 위에꺼 반복시키면 이건 필요없을거같음 ~~! -->
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane fade" id="soup" role="tabpanel" aria-labelledby="nav-profile-tab" >
                            
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>음식 사진</th>
                                            <th>음식 이름</th>
                                            <th>탄수화물</th>
                                            <th>단백질</th>
                                            <th>지방</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#">Work 1</a></td>
                                            <td>Doe</td>
                                            <td>john@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 2</a></td>
                                            <td>Moe</td>
                                            <td>mary@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 3</a></td>
                                            <td>Dooley</td>
                                            <td>july@example.com</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane fade" id="noodle" role="tabpanel" aria-labelledby="nav-contact-tab">
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>음식 사진</th>
                                            <th>음식 이름</th>
                                            <th>탄수화물</th>
                                            <th>단백질</th>
                                            <th>지방</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#">Work 1</a></td>
                                            <td>Doe</td>
                                            <td>john@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 2</a></td>
                                            <td>Moe</td>
                                            <td>mary@example.com</td>
                                        </tr>
                                        <tr>
                                            <td><a href="#">Work 3</a></td>
                                            <td>Dooley</td>
                                            <td>july@example.com</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</body>
</html>