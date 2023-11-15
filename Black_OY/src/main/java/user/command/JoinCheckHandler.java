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

public class JoinCheckHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		 String u_tel= request.getParameter("mob_no");
		 String u_name=  request.getParameter("user_nm");
		 String u_birth=  request.getParameter("legl_birth_dy");
		 
		 Connection conn = ConnectionProvider.getConnection();
		 OuserDAOImpl dao = OuserDAOImpl.getInstance();
		 OuserDTO dto = null;
			try {
				dto = dao.joinCheck(conn,u_tel);
			} catch (SQLException e) {
				System.out.println("> JoinCheckHandler.process Exception!");
				e.printStackTrace();
			}
			conn.close();
			
			request.setAttribute("dto", dto);
			
			String location = "";
			
			HttpSession session = request.getSession();
			
			session.setAttribute("u_tel", u_tel);
			session.setAttribute("u_name", u_name);
			session.setAttribute("u_birth", u_birth);
			
			if (dto ==null) {
				location = "/view/join/verify.jsp";
			} else {
				location = "/view/join/join_already.jsp";
			}
			return location;
		}
	

}
