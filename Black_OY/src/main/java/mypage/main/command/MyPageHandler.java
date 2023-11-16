package mypage.main.command;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import command.CommandHandler;
import mypage.main.domain.MpOrderStateDTO;
import mypage.main.domain.MpPAskDTO;
import mypage.main.domain.MpPlikeDTO;
import mypage.main.domain.MpQnADTO;
import mypage.main.domain.MpUserInfoDTO;
import mypage.main.service.MypageService;
import user.domain.LogOnDTO;

public class MyPageHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
			
		//파라미터값으로 회원id가져오기
		String userId = null;
		
		Connection conn = ConnectionProvider.getConnection();
		
		//회원id가져오기
		
		// 현재 로그인 한 유저 id 가져올려면 아래 코드 쓰면 됨
		//LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
		//userId = logOnDTO.getUser_id();
		

		//테스트용 고정값
		userId = "admin";	//request.getParameter("userId");

		MypageService service = MypageService.getinstance();
		
		//초기화
		
		List<MpPlikeDTO> userPlike = null;
		List<MpPAskDTO> userpAsk = null;
		List<MpQnADTO> userQnA = null;
		List<MpOrderStateDTO> userOrderState = null;
		
	
		userPlike = service.mpUPLservice(userId);
		userpAsk = service.mpUPAservice(userId);
		userQnA = service.mpUQnAservice(userId);
		userOrderState = service.mpUOservice(userId);
		
		
		
		
		request.setAttribute("userPlike", userPlike);
		request.setAttribute("userpAsk", userpAsk);
		request.setAttribute("userQnA", userQnA);
		request.setAttribute("userOrderState", userOrderState);
		
		return "/view/mypage/mypage.jsp";
	}

}
