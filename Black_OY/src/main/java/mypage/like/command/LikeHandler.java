package mypage.like.command;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import command.CommandHandler;
import mypage.like.domain.BLikeDTO;
import mypage.like.service.LikeService;
import mypage.main.domain.MpOrderStateDTO;
import mypage.main.domain.MpPAskDTO;
import mypage.main.domain.MpPlikeDTO;
import mypage.main.domain.MpQnADTO;
import mypage.main.domain.MpUserInfoDTO;
import mypage.main.service.MypageService;
import user.domain.LogOnDTO;

public class LikeHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		//유저정보가져오기
		String userId = null;
		
		Connection conn = ConnectionProvider.getConnection();
				
		// 현재 로그인 한 유저 id 가져올려면 아래 코드 쓰면 됨
		LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
		userId = logOnDTO.getUser_id();
		

		//테스트용 고정값
		//userId = "admin";	//request.getParameter("userId");
		
		
		MypageService mpservice = MypageService.getinstance();
		
		LikeService service = LikeService.getinstance();
		
		//초기화
		List<MpUserInfoDTO> userInfo = null;
		int userPoint = 0;
		int userCoupon = 0;
		int userDeposit = 0;
		int userRevCount = 0;
		//좋아요
		List<BLikeDTO> bLike = null;
		List<MpPlikeDTO> pLike = null;
		int rownum = 0;
		
		//서비스
		userInfo = mpservice.mpUIservice(userId);
		userPoint = mpservice.mpUPservice(userId);
		userCoupon = mpservice.mpUCservice(userId);
		userDeposit = mpservice.mpUDservice(userId);
		userRevCount = mpservice.mpURservice(userId);
		//좋아요
		bLike = service.blListservice(userId);
		pLike = service.plListservice(userId);
		
		//삭제 아마 case문?
		rownum = service.blDelAllservice(userId);
		rownum = service.blDelservice(userId, userId);
		rownum = service.plDelAllservice(userId);
		rownum = service.plDelservice(userId, userId);
		
		
		request.setAttribute("userInfo", userInfo);
		request.setAttribute("userPoint", userPoint);
		request.setAttribute("userCoupon", userCoupon);
		request.setAttribute("userDeposit", userDeposit);
		request.setAttribute("userRevCount", userRevCount);
		
		request.setAttribute("bLike", bLike);
		request.setAttribute("pLike", pLike);
		request.setAttribute("rownum", rownum);
		
		return "view/mypage/pLike.jsp";
	}
	
		
}//class
