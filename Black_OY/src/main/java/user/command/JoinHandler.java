package user.command;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import command.CommandHandler;
import user.domain.OuserDTO;
import user.persistence.OuserDAOImpl;

/*
public class JoinHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		 String method = request.getMethod(); 
		 request.setCharacterEncoding("utf-8");

		 String name = request.getParameter("name");
		 String birth =  request.getParameter("birth");
		 String tel=  request.getParameter("tel");
	
		 
		 OuserDTO dto = new OuserDTO();
		 
		 Connection conn = ConnectionProvider.getConnection();
		 OuserDAOImpl dao = new OuserDAOImpl(conn);
			
			int rowCount = 0;
			try {
				rowCount = dao.getJoinCheck(dto);
			} catch (SQLException e) {
				System.out.println("> JoinCheckHandler.doPost() Exception!");
				e.printStackTrace();
			}
			conn.close();

			String location = "/jspPro/member/joinCheck.do";
			response.sendRedirect(location);
			
			
			
	}

}
*/

