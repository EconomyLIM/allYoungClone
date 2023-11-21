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
			String newEmail = request.getParameter("newEmail");
			String newPwd = request.getParameter("newPwd");
			String newName = request.getParameter("userName");
			String newTel = request.getParameter("No");
			
			
			Connection conn = ConnectionProvider.getConnection();
			InfoUpdateService service = InfoUpdateService.getInstance();
			int infoUpd = 0;
			int nameUpd = 0;
			int telUpd = 0;
			
			infoUpd = service.infoUpdate(user_id , newEmail, newPwd);
			nameUpd =  service.nameUpdate(user_id, newName);
			telUpd = service.telUpdate(user_id, newTel);
			
			return  "/view/usermodify/info_modification.jsp";
			
	}
}
