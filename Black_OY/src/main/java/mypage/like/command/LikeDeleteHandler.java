package mypage.like.command;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import command.CommandHandler;
import mypage.like.service.LikeService;
import mypage.main.domain.MpUserInfoDTO;
import mypage.main.service.MypageService;
import user.domain.LogOnDTO;

public class LikeDeleteHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		//유저정보가져오기
		String userId = null;
		
		//어떤 삭제요청인지를 담는 변수
		String del = null;
		int delType = 0;
		
		del = request.getParameter("Del");
		delType = Integer.parseInt(request.getParameter("DelType"));
		
		Connection conn = ConnectionProvider.getConnection();
				
		// 현재 로그인 한 유저 id 가져올려면 아래 코드 쓰면 됨
		LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
		userId = logOnDTO.getUser_id();

		//유저정보		
		MypageService mpservice = MypageService.getinstance();
		LikeService service = LikeService.getinstance();

		//유저정보
		List<MpUserInfoDTO> userInfo = null;
		int userPoint = 0;
		int userCoupon = 0;
		int userDeposit = 0;
		int userRevCount = 0;
		
		int rownum = 0;

		//유저정보
		userInfo = mpservice.mpUIservice(userId);
		userPoint = mpservice.mpUPservice(userId);
		userCoupon = mpservice.mpUCservice(userId);
		userDeposit = mpservice.mpUDservice(userId);
		userRevCount = mpservice.mpURservice(userId);
	
		switch (delType) {
		case 0:
			rownum = service.plDelservice(userId, del);
			break;
		case 1:
			rownum = service.plDelAllservice(userId);
			break;
		case 2:
			rownum = service.blDelservice(userId, del);
			break;
		case 3:
			rownum = service.blDelAllservice(userId);
			break;
		}

		
		//유저정보
		request.setAttribute("userInfo", userInfo);
		request.setAttribute("userPoint", userPoint);
		request.setAttribute("userCoupon", userCoupon);
		request.setAttribute("userDeposit", userDeposit);
		request.setAttribute("userRevCount", userRevCount);
		request.setAttribute("rownum", rownum);
		
		//받은 삭제정보에 따라 이동할 페이지가 다름
		if (delType == 0 || delType == 1) {
			return "/olive/Like.do";
		} else if (delType == 2 || delType == 3) {
			return "/view/mypage/bLike.jsp";
		} else {
			System.out.println("> LikeDeleteHandler_Exception delType is wrong");
			return null;
		}
	}

}
