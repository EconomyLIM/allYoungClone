package user.command;

import java.security.Provider.Service;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.ConnectionProvider;

import command.CommandHandler;
import mypage.main.domain.MpUserInfoDTO;
import mypage.main.service.MypageService;
import user.domain.LogOnDTO;
import user.persistence.OuserDAOImpl;
import user.service.JoinService;
import user.service.PwdUpdateService;


public class PwdUpdateHandler implements CommandHandler{
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("> pwdUpdate.process...");

		LogOnDTO logDto = (LogOnDTO) request.getSession().getAttribute("logOn");
		String newPwd = request.getParameter("new_pwd");

		PwdUpdateService service = PwdUpdateService.getInstance();
		int rowCount = service.PwdUpdate( logDto.getUser_id(), newPwd);


		//비밀번호 수정 완료
		String location ="" ;
		if (rowCount ==1) {
			location = "/view/usermodify/pwd_modification_ok.jsp";
		}
		return location;
	}

}