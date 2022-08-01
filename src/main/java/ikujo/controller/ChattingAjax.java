package ikujo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ikujo.model.ChattingDTO;


public class ChattingAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		System.out.println("[ChattingAjax]");
		
		String toName = request.getParameter("");
		String fromName = request.getParameter("");
		String messege = request.getParameter("");
		
		ChattingDTO dto = new ChattingDTO(toName, fromName);
	}

}
