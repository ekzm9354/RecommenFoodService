<%@page import="ikujo.model.ChattingDAO"%>
<%@page import="ikujo.model.ChattingDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ikujo.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Title -->
<title>밥줘 영양줘</title>

<!-- Favicon -->
<link rel="icon" href="img/yerimimg/logoimg.ico">

<!-- 메일창 html 코드 -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
	<%
	String fromName = null;
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	String toName = info.getUserid();
	String userid = info.getUserid();
	ArrayList<ChattingDTO> CheckChatting = (ArrayList) new ChattingDAO().ChattingCheck(userid);
	for (int i = 0; i < CheckChatting.size(); i++) {
		String mes = CheckChatting.get(i).getMesseges();
		fromName = CheckChatting.get(i).getToName();
	%>
	<div>
	메세지<%=mes%>
	보낸이<%=fromName%>
	<input type="submit" id="response" value="보내기">
	<div id="dd"></div>
	<br>
	</div>
	<%
	}
	%>

<!-- 메일창 html 코드 -->
<div class="container">
	<div class="row">
		<div class="box-body no-padding">
                  <div class="mailbox-controls">
                    <!-- Check all button -->
                    <button class="btn btn-default btn-sm checkbox-toggle"><i class="glyphicon glyphicon-unchecked"></i></button>
                    <div class="btn-group">
                      <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-trash"></i></button>
                      <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-arrow-left"></i></button>
                      <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-share-alt"></i></button>
                    </div><!-- /.btn-group -->
                    <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-refresh"></i></button>
                    <div class="pull-right">
                      1-50/200
                      <div class="btn-group">
                        <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-arrow-left"></i></button>
                        <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-arrow-right"></i></button>
                      </div><!-- /.btn-group -->
                    </div><!-- /.pull-right -->
                  </div>
                  <hr>
                  <div class="table-responsive mailbox-messages">
                    <table class="table table-hover table-striped">
                      <tbody>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"></td>
                          <td class="mailbox-date">5 mins ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                          <td class="mailbox-date">28 mins ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                          <td class="mailbox-date">11 hours ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"></td>
                          <td class="mailbox-date">15 hours ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                          <td class="mailbox-date">Yesterday</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                          <td class="mailbox-date">2 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                          <td class="mailbox-date">2 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"></td>
                          <td class="mailbox-date">2 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"></td>
                          <td class="mailbox-date">2 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"></td>
                          <td class="mailbox-date">2 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                          <td class="mailbox-date">4 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"></td>
                          <td class="mailbox-date">12 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                          <td class="mailbox-date">12 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                          <td class="mailbox-date">14 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                          <td class="mailbox-date">15 days ago</td>
                        </tr>
                      </tbody>
                    </table><!-- /.table -->
                  </div><!-- /.mail-box-messages -->
                </div><!-- /.box-body -->
                <hr>
                <div class="box-footer no-padding">
                  <div class="mailbox-controls">
                    <!-- Check all button -->
                    <button class="btn btn-default btn-sm checkbox-toggle"><i class="glyphicon glyphicon-unchecked"></i></button>
                    <div class="btn-group">
                      <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-trash"></i></button>
                      <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-arrow-left"></i></button>
                      <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-share-alt"></i></button>
                    </div><!-- /.btn-group -->
                    <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-refresh"></i></button>
                    <div class="pull-right">
                      1-50/200
                      <div class="btn-group">
                        <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-arrow-left"></i></button>
                        <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-arrow-right"></i></button>
                      </div><!-- /.btn-group -->
                    </div><!-- /.pull-right -->
                  </div>
                </div>
              </div><!-- /. box -->
            </div><!-- /.col -->
          </div><!-- /.row -->
	</div>
</div>
<!-- 여기까지 -->

</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$('#response').on('click',function(){
		$('#dd').append('<span></span>');
		$('#dd span').last().append("<textarea row=3 col=30 class=retextbox></textarea>")
		$('#dd span').append("<input type=submit value=보내기 id=resend>")
	})
	
	$(document).on('click','#resend',function(){
		var toName ='<%=toName%>'
		var fromName = '<%=fromName%>'
		var cnt =1
		var messeges = $('.retextbox').val();
		$.ajax({
			/* 어디로 보낼건지? */
			url : "ChattingAjax",
			/* 어떤 데이터를 보낼 것인지? */
			data : {
				toName : toName,
				fromName : fromName,
				messeges : messeges,
				cnt:cnt
			},
			/* 데이터를 어떤 형태로 받아올 것인지 */
			dataType : "json",
			/* 성공 시 */
			success : function(key) {
				alert('성공')
				},
			error : function(e) {
				alert('실패');
				console.log(e);
			}
		})

	});
</script>
</html>