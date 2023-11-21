package mypage.qna.command;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import command.CommandHandler;
import mypage.main.domain.MpQnADTO;
import mypage.main.domain.MpUserInfoDTO;
import mypage.main.service.MypageService;
import mypage.qna.service.MPPrdQnAService;
import user.domain.LogOnDTO;

public class ProductQnAHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		

		String userId = null;

		String start = null;
		String end = null;
		
		Connection conn = ConnectionProvider.getConnection();
		
		//회원id가져오기
		
		// 현재 로그인 한 유저 id 가져올려면 아래 코드 쓰면 됨
		LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
		userId = logOnDTO.getUser_id();
		
		
		//검색에 필요한 요소 가져오기
		start = request.getParameter("startDate");
		end = request.getParameter("endDate");
		
		MypageService mpservice = MypageService.getinstance();
		
		MPPrdQnAService service = MPPrdQnAService.getinstance();
		
		//초기화
		//유저정보
		List<MpUserInfoDTO> userInfo = null;
		int userPoint = 0;
		int userCoupon = 0;
		int userDeposit = 0;
		int userRevCount = 0;
		
		//상품qna
		List<MpQnADTO> prodQnA = null;

		//유저정보
		userInfo = mpservice.mpUIservice(userId);
		userPoint = mpservice.mpUPservice(userId);
		userCoupon = mpservice.mpUCservice(userId);
		userDeposit = mpservice.mpUDservice(userId);
		userRevCount = mpservice.mpURservice(userId);
		
		//상품qna
		if (start == null) {			
			prodQnA = mpservice.mpUQnAservice(userId);
		} else {
			prodQnA = service.mpprdQnAService(userId, start, end);			
		}
		
		
		//유저정보
		request.setAttribute("userInfo", userInfo);
		request.setAttribute("userPoint", userPoint);
		request.setAttribute("userCoupon", userCoupon);
		request.setAttribute("userDeposit", userDeposit);
		request.setAttribute("userRevCount", userRevCount);
		
		//상품qna
		request.setAttribute("prodQnA", prodQnA);
		
		return "/view/mypage/qnA.jsp";
	}

}
