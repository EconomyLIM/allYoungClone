package user.command;

import java.sql.Connection;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import command.CommandHandler;
import user.domain.LogOnDTO;
import user.domain.OuserDTO;
import user.service.InfoUpdateService;
import user.service.JoinService;

public class InfoUpdateHandler  implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("> InfoUpdate.process...");
		String method = request.getMethod(); // GET, POST

		String refer = null;
		HttpSession session = request.getSession();

		if(method.equals("GET")) {

			refer = (String) session.getAttribute("refer");
			System.out.println("요청URL:" + refer);

			return "/view/usermodify/info_modification.jsp";
		} else { //post
			LogOnDTO logDto = (LogOnDTO) request.getSession().getAttribute("logOn");
			String u_name = request.getParameter("u_name");
			String u_pwd = request.getParameter("pwd");
			int u_Ybirth = Integer.parseInt( request.getParameter("birth_yy") );
			int u_Mbirth = Integer.parseInt(request.getParameter("birth_mm") );
			int u_Dbirth = Integer.parseInt(request.getParameter("birth_dd") );
			String u_tel=  request.getParameter("u_tel");
			String u_email=  request.getParameter("email_addr1")+"@"+request.getParameter("email_addr2");

			OuserDTO dto = OuserDTO.builder()
					.u_name(u_name)
					.u_pwd(u_pwd)
					.u_birth(new Date(u_Ybirth,u_Mbirth,u_Dbirth))
					.u_tel(u_tel)
					.u_email(u_email)
					.build();

			Connection conn = ConnectionProvider.getConnection();
			InfoUpdateService service = InfoUpdateService.getInstance();
			int rowCount =  service.infoUpdate(dto);
			//회원가입 완료 > 메인페이지로 이동
			String location ="" ;
			if (rowCount ==1) {
				location = "/view/usermodify/info_modification_ok.jsp";
			}
			return location;
		}
	}

}
