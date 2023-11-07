package user.command;

import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import command.CommandHandler;
import user.domain.OuserDTO;
import user.persistence.OuserDAOImpl;

public class JoinCheckHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		 request.setCharacterEncoding("utf-8");

		 String tel=  request.getParameter("tel");
		 System.out.println(tel);
		 
		 Connection conn = ConnectionProvider.getConnection();
		 OuserDAOImpl dao = new OuserDAOImpl(conn);
		 OuserDTO dto = null;
			try {
				dto = dao.joinCheck(tel);
			} catch (SQLException e) {
				System.out.println("> JoinCheckHandler.process Exception!");
				e.printStackTrace();
			}
			conn.close();
			String location = "";
			
			request.setAttribute("dto", dto);
			
			if (dto ==null) {
				location = "/CJjoin/agreement.jsp";
			} else {
				location = "/CJjoin/join_already.jsp";
			}
			
			
			
			return location;
	
	}

}
