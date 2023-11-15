package order.command;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.CommandHandler;
import order.domain.DeliveryDTO;
import order.domain.ProductInfo;
import order.service.OrderService;
import user.domain.LogOnDTO;

public class OrderHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String location = "";
		String method = request.getMethod();
		
		HttpSession session = request.getSession();
		LogOnDTO logOnDTO = (LogOnDTO)session.getAttribute("logOn");
		
		if(logOnDTO == null)  {
			return "/view/logon/logon.jsp";
		}
		
		String user_id = logOnDTO.getUser_id();
		List<DeliveryDTO> list = null;
		List<ProductInfo> productList = null;
		DeliveryDTO dto = null;
		ProductInfo productInfo = null;
		
		
		if(method.equals("GET")) {
			String[] products = request.getParameterValues("products");
			String quickYN = request.getParameter("quickYN"); // 오늘드림 여부
			
			System.out.println("product_id =" +  Arrays.toString(products));
			
			String[] product_id = new String[products.length]; // 파라미터로 넘어온 상품 id를 저장할 배열
			
			for (int i = 0; i < products.length; i++) {
				product_id[i] = products[i].split("-")[0];
			}
			
			OrderService service = OrderService.getInstance();
			
			list = service.getDeliveryList(user_id);
			productList = service.getProductList(product_id);
			dto = service.getDeliveryOne(user_id);
			
			Iterator<ProductInfo> ir = productList.iterator();
			while (ir.hasNext()) {
				productInfo = ir.next();
				for (int i = 0; i < products.length; i++) {
					if(products[i].indexOf(productInfo.getProId()) != -1) {
						productInfo.setCnt(Integer.parseInt(products[i].split("-")[1]));
						break;
					}
					
				}
			}
			
			request.setAttribute("quickYN", quickYN);
			request.setAttribute("list", list);
			request.setAttribute("productList", productList);
			request.setAttribute("dto", dto);
			
			location = "/view/order/orderForm.jsp";
		} else { // POST
			
			OrderService service = OrderService.getInstance();
			Map<String, Object> map = new HashMap<>();
			/*
			 * 1. 주문 테이블 인서트
			 * 2. 결제 테이블 인서트
			 * 3. 주문 상품 인서트
			 * 4. 오늘 드림, 픽업 여부에 따라 인서트
			 * 5. 선물 여부에 따라 인서트
			 * 6. 결제 쿠폰 사용했으면 인서트 -> 사용자가 가지고 있던 쿠폰은 삭제? 
			 * 7. 사용한 포인트, 기프트카트, 예치금 업데이트
			 * 8. 만약 장바구니에서 왔다면 장바구니에 있던건 삭제??
			 * 9. 신규 배송지를 썼으면 배송지 인서트?
			 */
			String delivery_id = request.getParameter("mbrDlvpSeq");		// 배송지 id
			String delivery_msg = request.getParameter("deliMsg");			// 배송메시지
			String visit_how = request.getParameter("o2oVisitTypeSp");		// 출입 방법
			String visit_pwd = request.getParameter("o2oVisitTypeDesc");	// 출입 비번
			String totalPrice = request.getParameter("totalPrice");			// 총 상품 금액
			String totalPay = request.getParameter("totalPay");				// 총 결제 금액
			String delivery_price = request.getParameter("deli_price");		// 배송비
			String pay_type = request.getParameter("payMethod");			// 결제 수단
			String card_type = request.getParameter("acqrCd");				// 카드 종류
			String[] product_id = request.getParameterValues("pr_cnt");		// 주문한 상품 id와 수량 
			
			/*
			 * 추가 파라미터 작업
			 * 1. 오늘드림 여부
			 * 2. 픽업 여부
			 * 3. 쿠폰 할인금액
			 * 4. 할부 종류
			 */
			System.out.println("delivery_id : " + delivery_id
						+ "\ndelivery_msg : " + delivery_msg
						+ "\nvisit_how : " + visit_how
						+ "\nvisit_pwd : " + visit_pwd
						+ "\ntotalPrice : " + totalPrice
						+ "\ntotalPay : " + totalPay
						+ "\ndelivery_price : " + delivery_price
						+ "\npay_type : " + pay_type
						+ "\ncard_type : " + card_type
						+ "\nproduct_id : " + Arrays.toString(product_id)
					);
			
			map.put("delivery_id", delivery_id);
			map.put("user_id", user_id);
			map.put("delivery_msg", delivery_msg);
			map.put("visit_how", visit_how);
			map.put("visit_pwd", visit_pwd);
			map.put("totalPrice", Integer.parseInt(totalPrice));
			map.put("totalPay", Integer.parseInt(totalPay));
			map.put("delivery_price", Integer.parseInt(delivery_price));
			map.put("pay_type", pay_type);
			map.put("card_type", card_type);
			map.put("product_id", product_id);
			
			
			boolean flag = service.orderService(map);
			
			
			
			return "/view/order/orderComplete.jsp";
		}
		
		try {
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return location;
	}

}
