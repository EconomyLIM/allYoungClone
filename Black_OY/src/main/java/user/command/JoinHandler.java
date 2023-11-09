package user.command;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import command.CommandHandler;
import user.domain.OuserDTO;
import user.persistence.OuserDAOImpl;


public class JoinHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		 request.setCharacterEncoding("utf-8");
		 
		 String name = request.getParameter("name");
		 String tel=  request.getParameter("tel");
		 String birth = request.getParameter("birth");
		 System.out.println(tel);
		 
		 Connection conn = ConnectionProvider.getConnection();
		 OuserDAOImpl dao = new OuserDAOImpl(conn);
		 OuserDTO dto = new OuserDTO();
			dto.setUser_id("user_id");
			dto.setU_pwd("u_pwd");
			dto.setU_email("u_email");
			conn.close();
			
			request.setAttribute("dto", dto);
			//회원가입 완료 > 메인페이지로 이동
			String location = "/";
		
			return location;
	}
}


