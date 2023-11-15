package user.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.CommandHandler;

public class LogOutHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("> LogOut.process...");
		HttpSession session = request.getSession();
		session.removeAttribute("logOn");
		session.setAttribute("basketlistcnt",0);
		response.sendRedirect("/Black_OY/olive/main.do");
		return null;
	}

}
