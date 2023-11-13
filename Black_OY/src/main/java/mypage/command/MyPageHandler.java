package mypage.command;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import command.CommandHandler;
import mypage.domain.MpOrderDTO;
import mypage.domain.MpPAskDTO;
import mypage.domain.MpPlikeDTO;
import mypage.domain.MpQnADTO;
import mypage.domain.MpUserInfoDTO;
import mypage.service.MypageService;
import user.domain.LogOnDTO;

public class MyPageHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
			
		//파라미터값으로 회원id가져오기
		String userId = null;
		
		Connection conn = ConnectionProvider.getConnection();
		
		//회원id가져오기
		
		// 현재 로그인 한 유저 id 가져올려면 아래 코드 쓰면 됨
		LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
		userId = logOnDTO.getUser_id();
		
		//userId = "admin"; 
		request.getParameter("userId");
		MypageService service = MypageService.getinstance();
		
		//초기화
		List<MpUserInfoDTO> userInfo = null;
		int userPoint = 0;
		int userCoupon = 0;
		int userDeposit = 0;
		List<MpPlikeDTO> userPlike = null;
		List<MpPAskDTO> userpAsk = null;
		List<MpQnADTO> userQnA = null;
		int userRevCount = 0;
		List<MpOrderDTO> userOrder = null;
		
		userInfo = service.mpUIservice(userId);
		userPoint = service.mpUPservice(userId);
		userCoupon = service.mpUCservice(userId);
		userDeposit = service.mpUDservice(userId);
		userPlike = service.mpUPLservice(userId);
		userpAsk = service.mpUPAservice(userId);
		userQnA = service.mpUQnAservice(userId);
		userRevCount = service.mpURservice(userId);
		userOrder = service.mpUOservice(userId);
		
		
		
		request.setAttribute("userInfo", userInfo);
		request.setAttribute("userPoint", userPoint);
		request.setAttribute("userCoupon", userCoupon);
		request.setAttribute("userDeposit", userDeposit);
		request.setAttribute("userPlike", userPlike);
		request.setAttribute("userpAsk", userpAsk);
		request.setAttribute("userQnA", userQnA);
		request.setAttribute("userRevCount", userRevCount);
		request.setAttribute("userOrder", userOrder);
		
		return "/view/mypage/mypage.jsp";
	}

}
