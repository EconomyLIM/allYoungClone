package user.command;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import command.CommandHandler;
import user.domain.LogOnDTO;
import user.service.InfoUpdateService;

public class NameTelmodifyHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("NameTelmodify.process");
		LogOnDTO logDto = (LogOnDTO) request.getSession().getAttribute("logOn");	
		String user_id = logDto.getUser_id();
		
		String newName = request.getParameter("userName");
		String tel1 = request.getParameter("No").substring(0, 3);
		String tel2 = request.getParameter("No").substring(3, 7);
		String tel3 = request.getParameter("No").substring(7);
		String newTel = tel1+"-"+tel2+"-"+tel3;
		
		Connection conn = ConnectionProvider.getConnection();
		InfoUpdateService service = InfoUpdateService.getInstance();
		
		int nameUpd = 0;
		int telUpd = 0;
		
		nameUpd =  service.nameUpdate(user_id, newName);
		telUpd = service.telUpdate(user_id, newTel);
		
		request.setAttribute("newName", newName);
		request.setAttribute("newTel", newTel);

		return  "/view/usermodify/info_modification.jsp";
	}
	

}
