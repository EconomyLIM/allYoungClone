package user.command;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import command.CommandHandler;
import user.domain.OuserDTO;
import user.persistence.OuserDAOImpl;
import user.service.JoinService;


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
		} else { //post

		 String user_id = request.getParameter("mbr_id");
		 String u_name = request.getParameter("u_name");
		 String u_pwd = request.getParameter("pwd");
		 int u_Ybirth = Integer.parseInt( request.getParameter("birth_yy") );
		 int u_Mbirth = Integer.parseInt(request.getParameter("birth_mm") );
		 int u_Dbirth = Integer.parseInt(request.getParameter("birth_dd") );
		 String u_tel=  request.getParameter("u_tel");
		 String u_email=  request.getParameter("email_addr1")+"@"+request.getParameter("email_addr2");

		 OuserDTO dto = OuserDTO.builder()
				 .user_id(user_id)
				 .u_name(u_name)
				 .u_pwd(u_pwd)
				 .u_birth(new Date(u_Ybirth,u_Mbirth,u_Dbirth))
				 .u_tel(u_tel)
				 .u_email(u_email)
				 .build();
		 
		Connection conn = ConnectionProvider.getConnection();
		JoinService service = JoinService.getInstance();
		int rowCount =  service.addUser(dto);
		//회원가입 완료 > 메인페이지로 이동
		String location ="" ;
		if (rowCount ==1) {
			location = "/Black_OY/olive/LogOn.do";
		}
		return location;
		}
	}
}
