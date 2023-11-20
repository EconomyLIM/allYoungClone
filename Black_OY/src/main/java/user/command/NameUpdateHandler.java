package user.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.CommandHandler;

public class NameUpdateHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("> nameUpdate.process...");
		String method = request.getMethod(); // GET, POST

		String refer = null;
		HttpSession session = request.getSession();
		
//		if(method.equals("GET")) {

			refer = (String) session.getAttribute("refer");
			System.out.println("요청URL:" + refer);

		return "/view/usermodify/name_update.jsp";
//		} else { //post
			
		
		}



}
