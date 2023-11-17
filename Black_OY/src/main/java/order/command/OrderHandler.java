package order.command;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
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
			String click = request.getParameter("click");
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
			
			if(click.equals("선물하기")) {
				return "/view/order/orderGiftForm.jsp";
			}
			
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
			 * 5. 선물포장 여부
			 * 6. 포인트 결제 금액
			 * 7. 어느 버튼을 누르고 왔는지 ex) 장바구니 또는 상품상세페이지
			 */
			String today_opt = request.getParameter("quickYN");				// 오늘 드림 여부
			String pickupYN = request.getParameter("pickupYN");				// 픽업 여부
			String packaging_opt = request.getParameter("giftBoxYn"); 		// 선물 포장 여부
			String inst_type = request.getParameter("instMmCnt");			// 할부종류
			String cd_price = request.getParameter("cd_price"); 			// 쿠폰할인금액
			String point_price = request.getParameter("point_price"); 		// 포인트 결제 금액
			String click = request.getParameter("click");					// 어떤 버튼을 누르고 주문페이지로 온지 
			
			
			/*
			 * 오늘드림 선택 시 가져와야할 파라미터
			 * 1. 배송 구분
			 */
			
			
			/*
			 * 오늘드림 설정
			 */
			if(today_opt.equals("Y")) {
				String region = request.getParameter("region");		// 고객 주소 동네
				region = region.split(" ")[1];
				
				// 배송 구분
				String today_param = request.getParameter("temp_chk"); // ex) 금일-34배송
				String[] today_date_type = today_param.split("-");
				String today_date = today_date_type[0];					// 금일 or 익일
				String today_type = today_date_type[1];					// 배송 구분
				
				
				// 오늘 드림 도착 시간
				Date today_arrive = new Date();
				int addHour = (int)(Math.random()*3)+1;
				today_arrive.setHours(today_arrive.getHours() + addHour);
				String pattern = "yyyy-MM-dd HH:mm";
				SimpleDateFormat sdf = new SimpleDateFormat(pattern);
				String ta_str = sdf.format(today_arrive);
				
				// 걸린 시간 그룹
				String hour_group = "";
				Date currDate = new Date();
				String currStr = currDate.getHours() + "" + currDate.getMinutes();
				String todayStr = today_arrive.getHours() + "" + today_arrive.getMinutes();
				int diff = Integer.parseInt(todayStr) - Integer.parseInt(currStr);
				if(addHour == 1) {
					hour_group = "1시간 이내";
				} else if(addHour == 2) {
					hour_group = "1시간~2시간";
				} else if(addHour == 3) {
					hour_group = "2시간~3시간";
				}
				
				// 배송 예정 일시
				Date d = new Date();
				if(today_date.equals("익일")) {
					d.setDate(d.getDate()+1);				
				}
				pattern = "yyyy.MM.dd";
				sdf = new SimpleDateFormat(pattern);
				sdf.format(d);
				String today_del_date = sdf.format(d);
				
				
				System.out.println(
							"\nregion : " + region
							+ "\ntoday_type : " + today_type
							+ "\ntoday_arr : " + ta_str
							+ "\nhour_group : " + hour_group
							+ "\ntoday_del_date : " + today_del_date	
						);
				
				map.put("region", region);
				map.put("today_type", today_type);
				map.put("today_arrive", ta_str);
				map.put("hour_group", hour_group);
				map.put("today_del_date", today_del_date);
			}
			
			
			/*
			 * 픽업 선택 시 가져와야할 파라미터
			 * 1. 매장 ID
			 */
			String store_id = request.getParameter("mapList"); // jsp 작업 해야함***********
			
			
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
						+ "\ntoday_opt : " + today_opt
						+ "\npickupYN : " + pickupYN
						+ "\npackaging_opt : " + packaging_opt
						+ "\ncd_price : " + cd_price
						+ "\npoint_price : " + point_price
						+ "\nclick : " + click
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
			map.put("today_opt", today_opt);
			map.put("pickupYN", pickupYN);
			map.put("packaging_opt", packaging_opt);
			map.put("cd_price", Integer.parseInt(cd_price));
			map.put("inst_type", inst_type);
			map.put("point_price", Integer.parseInt(point_price));
			map.put("store_id", store_id);
			map.put("click", click);
			
			
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
