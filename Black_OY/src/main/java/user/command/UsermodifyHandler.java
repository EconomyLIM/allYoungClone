package user.command;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import command.CommandHandler;
import mypage.main.domain.MpUserInfoDTO;
import mypage.main.service.MypageService;
import user.domain.LogOnDTO;

public class UsermodifyHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userId = null;
		Connection conn = ConnectionProvider.getConnection();

		MypageService mpservice = MypageService.getinstance();
		LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
		userId = logOnDTO.getUser_id();
		
		//유저정보
				List<MpUserInfoDTO> userInfo = null;
				int userPoint = 0;
				int userCoupon = 0;
				int userDeposit = 0;
				int userRevCount = 0;

				//유저정보
				userInfo = mpservice.mpUIservice(userId);
				userPoint = mpservice.mpUPservice(userId);
				userCoupon = mpservice.mpUCservice(userId);
				userDeposit = mpservice.mpUDservice(userId);
				userRevCount = mpservice.mpURservice(userId);
				
				//유저정보
				request.setAttribute("userInfo", userInfo);
				request.setAttribute("userPoint", userPoint);
				request.setAttribute("userCoupon", userCoupon);
				request.setAttribute("userDeposit", userDeposit);
				request.setAttribute("userRevCount", userRevCount);
			
		return "/view/usermodify/usermodify.jsp";
		
	}

}
