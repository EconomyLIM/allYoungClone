package user.command;

import java.security.Provider.Service;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import command.CommandHandler;
import user.domain.LogOnDTO;
import user.domain.OuserDTO;
import user.persistence.OuserDAOImpl;
import user.service.JoinService;
import user.service.PwdUpdateService;


public class pwdUpdateHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		
		LogOnDTO logDto = (LogOnDTO) request.getSession().getAttribute("logOn");
	
		String user_id=  request.getParameter("user_id");
		System.out.println(user_id);
		String oldPwd = request.getParameter("oldPwd");
		String newPwd = request.getParameter("newPwd");


		Connection conn = ConnectionProvider.getConnection();
		PwdUpdateService service = PwdUpdateService.getInstance();

	
		conn.close();

		request.setAttribute("logDto", logDto);

		HttpSession session = request.getSession();
		session.setAttribute("userId", user_id);

		return null;
	}
}
