package order.command;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import order.service.OrderService;
import user.domain.LogOnDTO;

public class GiftHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String location = "";
		String method = request.getMethod();
		
		
		if(method.equals("GET")) {
			
			
		} else { // POST
			OrderService service = OrderService.getInstance();
			Map<String, Object> map = new HashMap<>();
			
			String[] product_id = request.getParameterValues("pr_cnt");		// 주문한 상품 id와 수량 
			
			/*
			 * 주문 테이블
			 */
			String user_id = ((LogOnDTO)request.getSession().getAttribute("logOn")).getUser_id();
			Date delivery_date = new Date();							// 배송예정일
			delivery_date.setDate(delivery_date.getDate()+3);
			String order_status = "결제완료";								// 주문 상태
			String order_type = "온라인";									// 구매 유형
			
			
			
			/*
			 * 결제 테이블
			 */
			String total_price = request.getParameter("totalPrice");	// 총 상품금액
			String pay_price = request.getParameter("totalPay");		// 총 상품금액
			String cd_price = request.getParameter("cd_price");			// 쿠폰 사용금액
			String point_price = request.getParameter("point_price");	// 포인트 사용금액
			String delivery_price = request.getParameter("deli_price");	// 총 배송비
			String pay_type = request.getParameter("payMethod");		// 결제 수단
			String card_type = request.getParameter("acqrCd");			// 카드 종류
			String inst_type = request.getParameter("instMmCnt");		// 할부 종류
			
			
			/*
			 * 선물 테이블
			 */
			String receive_name = request.getParameter("rcvNm");		// 받는 사람 이름
			String receive_tel = request.getParameter("rcvPhone");		// 받는 사람 전화번호
			String msg = request.getParameter("presentMsg");			// 메시지
			String mc_id = request.getParameter("mc_id");				// 메시지 카드 ID
			
			map.put("product_id", product_id);
			map.put("user_id", user_id);
			map.put("delivery_date", delivery_date);
			map.put("order_status", order_status);
			map.put("order_type", order_type);
			map.put("total_price", Integer.parseInt(total_price));
			map.put("pay_price", Integer.parseInt(pay_price));
			map.put("delivery_price", Integer.parseInt(delivery_price));
			map.put("pay_type", pay_type);
			map.put("card_type", card_type);
			map.put("inst_type", inst_type);
			map.put("receive_name", receive_name);
			map.put("receive_tel", receive_tel);
			map.put("msg", msg);
			map.put("mc_id", mc_id);
			map.put("cd_price", Integer.parseInt(cd_price));
			map.put("point_price", Integer.parseInt(point_price));
			
			
			String order_id = service.giftOrderService(map);
			request.setAttribute("order_id", order_id);
			
			location = "/view/order/orderComplete.jsp";
		}
		
		return location;
	}

}
