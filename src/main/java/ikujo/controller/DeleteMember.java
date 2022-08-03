package ikujo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ikujo.command.Command;
import ikujo.model.MemberDAO;

public class DeleteMember implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("[DeleteMember]");
//
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		System.out.println(id);

		int nutrient = new MemberDAO().deleteNutrients(id);
		int ui = new MemberDAO().deleteUi(id);
		int info = new MemberDAO().deleteInfo(id);
		String moveURL = "";
		if (info > 0 && ui > 0 && nutrient > 0) {
			session.removeAttribute("info");
			moveURL = "./Main.jsp";
		} else {
			moveURL = "./Main.jsp";
		}
		return moveURL;
	}

}
