package user.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import user.domain.LogOnDTO;

public class PwdCheckHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		return "/view/usermodify/pwdCheck.jsp";
		
	}

}
