package ikujo.controller;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ikujo.command.Command;
import ikujo.model.FoodDAO;
import ikujo.model.FoodDTO;
import ikujo.model.MemberDTO;

public class InsertFood implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("[InsertFood]");
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		String name = (String) session.getAttribute("name");
		String foodNm = request.getParameter("foodNm");
		String udate = request.getParameter("udate");
		
		System.out.println(udate);
		FoodDTO dto = new FoodDTO(udate, id, name, foodNm);
		int row = new FoodDAO().insertFood(dto);
		String moveURL ="";
		
		if(row >0) {
			moveURL="./SelectFood.jsp";
		}else {
			moveURL ="./insertFood.jsp";
		}
		
		return moveURL;
	}

}
