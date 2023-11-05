package user.command;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import command.CommandHandler;
import user.domain.LogOnDTO;
import user.service.LogOnService;

public class LogOnHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("> LogOn.process...");
		
		String user_id = request.getParameter("loginId");
		String u_pwd = request.getParameter("password");
		LogOnService logOnService = LogOnService.getInstance();
		LogOnDTO logdto = logOnService.logselectService(user_id, u_pwd);
		
		HttpSession session = request.getSession();
		
		if (logdto != null) {
			
			session.setAttribute("logOn", logdto);
			 request.removeAttribute("errorMessage");
			return "/view/mainPage/main.jsp";
			
		} else {
			System.out.println("비밀번호 오류");
			String errorMessage = "비밀번호 오류";
            request.setAttribute("errorMessage", errorMessage);
			return "/view/logon/logon.jsp";
		}
		
	}

}
