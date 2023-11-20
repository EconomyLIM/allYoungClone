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
import user.service.PwdUpdateService;

public class InfoUpdateHandler  implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("> InfoUpdate.process...");
			String method = request.getMethod(); // GET, POST

			LogOnDTO logDto = (LogOnDTO) request.getSession().getAttribute("logOn");	
			String user_id = logDto.getUser_id();
			String newEmail = request.getParameter("email_addr1")+"@"+request.getParameter("email_addr2");
			String newPwd = request.getParameter("pwd");
			String newName = request.getParameter("userName");
			String tel1 = request.getParameter("No").substring(0, 3);
			String tel2 = request.getParameter("No").substring(3, 7);
			String tel3 = request.getParameter("No").substring(7);
			String newTel = tel1+"-"+tel2+"-"+tel3;
			
			Connection conn = ConnectionProvider.getConnection();
			InfoUpdateService service = InfoUpdateService.getInstance();
			int infoUpd = 0;
			int nameUpd = 0;
			int telUpd = 0;
			
			infoUpd = service.infoUpdate(user_id , newEmail, newPwd);
			nameUpd =  service.nameUpdate(user_id, newName);
			telUpd = service.telUpdate(user_id, newTel);
			
			System.out.println(newEmail);
			System.out.println(newTel);
			return  "/view/usermodify/info_modification.jsp";
			
	}
}
