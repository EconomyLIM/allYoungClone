package user.command;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import command.CommandHandler;
import user.domain.OuserDTO;
import user.persistence.OuserDAOImpl;

/*
public class JoinHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("> Join.process...");
		String method = request.getMethod(); // GET, POST

		String refer = null;
		HttpSession session = request.getSession();
		
		if(method.equals("GET")) {

			refer = (String) session.getAttribute("refer");
			System.out.println("요청URL:" + refer);

			return "/view/join/join.jsp";
		} else {

		 String user_id = request.getParameter("user_id");
		 String u_name = request.getParameter("u_name");
		 String u_pwd = request.getParameter("u_pwd");
		 String u_birth = request.getParameter("u_birth");
		 String u_tel=  request.getParameter("u_tel");

		 Connection conn = ConnectionProvider.getConnection();
		 OuserDAOImpl dao = new OuserDAOImpl(conn);
		 OuserDTO dto = new OuserDTO();

			conn.close();
			
			request.setAttribute("dto", dto);
			//회원가입 완료 > 메인페이지로 이동
			String location = "/";
		
			return location;
	}
}
*/

