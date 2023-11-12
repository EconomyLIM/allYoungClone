package user.command;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import command.CommandHandler;
import user.domain.OuserDTO;
import user.persistence.OuserDAOImpl;
/*
public class pwdCheckHandler implements CommandHandler{

	@Override
	
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		 request.setCharacterEncoding("utf-8");

		 String u_pwd=  request.getParameter("u_pwd");

		 System.out.println(u_pwd);
		 
		 Connection conn = ConnectionProvider.getConnection();
		 OuserDAOImpl dao = OuserDAOImpl.getInstance();
		 OuserDTO dto = null;
			try {
				dto = dao.pwdCheck(conn,u_pwd);
			} catch (SQLException e) {
				System.out.println("> pwdCheckHandler.process Exception!");
				e.printStackTrace();
			}
			conn.close();
			
			request.setAttribute("dto", dto);
			
			String location = "";
			
			HttpSession session = request.getSession();
			
			session.setAttribute("u_pwd", u_pwd);

			location = "/view/usermodify/modification.jsp";

			return location;
	}

}
*/