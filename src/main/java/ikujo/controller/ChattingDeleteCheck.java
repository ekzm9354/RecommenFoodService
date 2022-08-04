package ikujo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ikujo.model.ChattingDAO;
import ikujo.model.ChattingDTO;


public class ChattingDeleteCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		System.out.println("[ChattingDeleteCheck]");

		String toName = request.getParameter("toName");
		String fromName = request.getParameter("fromName");
		System.out.println(toName);
		System.out.println(fromName);
		
		ChattingDTO dto = new ChattingDTO(toName, fromName);
		int CheckDeleteChatting = new ChattingDAO().ChattingDeleteCheck(dto);
		
		Gson gson = new Gson();
		String json = gson.toJson(CheckDeleteChatting);
		System.out.println(json);
		response.getWriter().print(json);
	}

}
