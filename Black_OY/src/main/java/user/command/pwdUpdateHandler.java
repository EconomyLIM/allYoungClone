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
		System.out.println("> pwdUpdate.process...");
		String method = request.getMethod(); // GET, POST

		String refer = null;
		HttpSession session = request.getSession();
		
		if(method.equals("GET")) {
			refer = (String) session.getAttribute("refer");
			System.out.println("요청URL:" + refer);

			return "/view/usermodify/pwd_modification.jsp";
		} else { //post
		
		LogOnDTO logDto = (LogOnDTO) request.getSession().getAttribute("logOn");
	
		String oldPwd = request.getParameter("oldPwd");
		String newPwd = request.getParameter("newPwd");
		
		Connection conn = ConnectionProvider.getConnection();
		PwdUpdateService service = PwdUpdateService.getInstance();

		conn.close();

		

		session = request.getSession();


		return null;
	}
	}
}
