package ikujo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ChttingFlask extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String ip = (String) session.getAttribute("ip");
		System.out.println(ip);
		String id = (String) session.getAttribute("id");
		System.out.println(id);
		
//		Flask로 간다

		response.sendRedirect("http://59.0.147.198:5000/usaMember/?ip="+ip+"&id="+id);
	}

}
