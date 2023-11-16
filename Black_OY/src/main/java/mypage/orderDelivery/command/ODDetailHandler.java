package mypage.orderDelivery.command;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import command.CommandHandler;
import mypage.main.domain.MpUserInfoDTO;
import mypage.main.service.MypageService;
import mypage.orderDelivery.domain.MPODOrderDTO;
import mypage.orderDelivery.domain.MPODdeliveryDTO;
import mypage.orderDelivery.domain.MPODpaymentDTO;
import mypage.orderDelivery.service.MPOrderDeliveryService;
import user.domain.LogOnDTO;

public class ODDetailHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		String userId = null;
		
		String orderId = null;
		
		orderId = request.getParameter("orderId");
		
		
		//회원id가져오기
		
		// 현재 로그인 한 유저 id 가져올려면 아래 코드 쓰면 됨
		LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
		userId = logOnDTO.getUser_id();
		
		//userId = "admin";	
		
		Connection conn = ConnectionProvider.getConnection();
		
		MPOrderDeliveryService service = MPOrderDeliveryService.getinstance();
		MypageService mpservice = MypageService.getinstance();
		
		
		//초기화
		//주문배송
		List<MPODOrderDTO> detailList = null;
		List<MPODdeliveryDTO> deliveryList = null;
		List<MPODpaymentDTO> paymentList = null;
		//유저정보
		List<MpUserInfoDTO> userInfo = null;
		int userPoint = 0;
		int userCoupon = 0;
		int userDeposit = 0;
		int userRevCount = 0;

	
		
		//주문배송
		detailList = service.mpODorderdetailService(orderId);
		deliveryList = service.mpODdeliveryService(orderId);
		paymentList = service.mpODpaymentService(orderId);
		//유저정보
		userInfo = mpservice.mpUIservice(userId);
		userPoint = mpservice.mpUPservice(userId);
		userCoupon = mpservice.mpUCservice(userId);
		userDeposit = mpservice.mpUDservice(userId);
		userRevCount = mpservice.mpURservice(userId);
		
	
		
		//주문배송
		request.setAttribute("detailList", detailList);
		request.setAttribute("deliveryList", deliveryList);
		request.setAttribute("paymentList", paymentList);
		//유저정보
		request.setAttribute("userInfo", userInfo);
		request.setAttribute("userPoint", userPoint);
		request.setAttribute("userCoupon", userCoupon);
		request.setAttribute("userDeposit", userDeposit);
		request.setAttribute("userRevCount", userRevCount);
	
		
		
		return "/view/mypage/orderDeliveryDetail.jsp";
		//}//if
	}//process
	
	
}
