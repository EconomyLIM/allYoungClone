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
		 request.setCharacterEncoding("utf-8");

		 String tel=  request.getParameter("tel");
		 String u_name=  request.getParameter("u_name");
		 String u_birth=  request.getParameter("u_birth");
		 System.out.println(tel);
		 
		 Connection conn = ConnectionProvider.getConnection();
		 OuserDAOImpl dao = OuserDAOImpl.getInstance();
		 OuserDTO dto = null;
			try {
				dto = dao.joinCheck(conn,tel);
			} catch (SQLException e) {
				System.out.println("> JoinCheckHandler.process Exception!");
				e.printStackTrace();
			}
			conn.close();
			
			request.setAttribute("dto", dto);
			
			String location = "";
			
			HttpSession session = request.getSession();
			
			session.setAttribute("tel", tel);
			session.setAttribute("u_name", u_name);
			session.setAttribute("u_birth", u_birth);
			
			if (dto ==null) {
				location = "/view/join/agreement.jsp";
			} else {
				location = "/view/join/join_already.jsp";
			}
			return location;
	}

}
