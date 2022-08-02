<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ikujo.model.ChattingDTO"%>
<%@page import="ikujo.model.ChattingDAO"%>
<%@page import="ikujo.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>밥줘 영양줘</title>
<!-- Favicon -->
<link rel="icon" href="img/yerimimg/logoimg.ico">
<link href="Chat.css" rel="stylesheet">
</head>
<body>
<div class="chat_window">
    <div class="top_menu">
        <div class="buttons">
            <div class="button close"></div>
            <div class="button minimize"></div>
            <div class="button maximize"></div>
        </div>
        <div id="whos">대화방 목록</div>
    </div>
    <ul id="chattingMain">
    <div id="chattingRoom">
   <%
MemberDTO info = (MemberDTO) session.getAttribute("info");
String toName = info.getUserNm();
String fromName = request.getParameter("usaUserBest");
%>

			대화상대 :
			<%=fromName%><br>
			<%
	
	ChattingDTO dto = new ChattingDTO(toName,fromName);
	ArrayList<ChattingDTO> MessegesAll = (ArrayList) new ChattingDAO().ChattingAll(dto);
	Gson gson = new Gson();
	String json = gson.toJson(MessegesAll);
	if(MessegesAll != null){
		for(int i = 0; i<MessegesAll.size();i++){
	%>
			<%=MessegesAll.get(i).getToName() %>:
			<%=MessegesAll.get(i).getMesseges() %><bR>
			<%=MessegesAll.get(i).getC_date()%><br>
			<%}
		} %>
    
    
    </div>
    </ul>
    <div class="bottom_wrapper clearfix">
        <div class="message_input_wrapper">
            <input class="message_input" placeholder="Type your message here..." />
        </div>
        
              
        <div class="textbox">
            <input type="submit" value="보내기" id="send">
<!--         <div class="send_message"> -->
           <input type="submit" value="나가기" id="out">
      <!--   </div> -->
        </div>
    </div>
</div>
<div class="message_template">
    <li class="message">
        <div class="avatar"></div>
        <div class="text_wrapper">
            <div class="text"></div>
        </div>
    </li>
</div>


</body>
</html>