package ikujo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ikujo.model.ChattingDAO;
import ikujo.model.ChattingDTO;

public class ChattingAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		System.out.println("[ChattingAjax]");

		String toName = request.getParameter("toName");
		String fromName = request.getParameter("fromName");
		String messeges = request.getParameter("messeges");
		int cnt = Integer.parseInt(request.getParameter("cnt"));
		
		System.out.println(toName);
		System.out.println(fromName);
		System.out.println(messeges);
		System.out.println(cnt);

//		메시지 넣기
		ChattingDTO dto = new ChattingDTO(toName, fromName, messeges);
		int row = new ChattingDAO().ChattingInsert(dto);
		
		if (row > 0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}
	}

}
