package mypage.orderDelivery.command;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import command.CommandHandler;
import mypage.orderDelivery.domain.MPODOrderDTO;
import mypage.orderDelivery.domain.MPODdeliveryDTO;
import mypage.orderDelivery.domain.MPODpaymentDTO;
import mypage.orderDelivery.service.MPOrderDeliveryService;

public class OrderDeliveryHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		String userId = null;
		
		//주문번호 가져오는 방법 생각해보기
		String orderId = null;
		
		Connection conn = ConnectionProvider.getConnection();
		
		//회원id가져오기
		
		// 현재 로그인 한 유저 id 가져올려면 아래 코드 쓰면 됨
		//LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
		//userId = logOnDTO.getUser_id();
		
		userId = "admin";	//request.getParameter("userId");
		
		MPOrderDeliveryService service = MPOrderDeliveryService.getinstance();
		
		//초기화
		List<MPODOrderDTO> orderList = null;
		List<MPODOrderDTO> detailList = null;
		List<MPODdeliveryDTO> deliveryList = null;
		List<MPODpaymentDTO> paymentList = null;
		
		orderList = service.mpODorderService(userId);
		detailList = service.mpODorderdetailService(orderId);
		deliveryList = service.mpODdeliveryService(orderId);
		paymentList = service.mpODpaymentService(orderId);
		
		request.setAttribute("orderList", orderList);
		request.setAttribute("detailList", detailList);
		request.setAttribute("deliveryList", deliveryList);
		request.setAttribute("paymentList", paymentList);
		
		return "/view/mypage/orderDelivery.jsp";
	}
	
	
}
