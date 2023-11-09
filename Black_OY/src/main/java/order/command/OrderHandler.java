package order.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import basket.domain.BasketDTO;
import basket.service.BasketListService;
import command.CommandHandler;
import order.domain.DeliveryDTO;
import order.service.OrderService;
import user.domain.LogOnDTO;

public class OrderHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("> OrderHandler.process...");
		String user_id = null;
		//String productid = null;
		HttpSession session = request.getSession();
		// String refer = null;
		String quickyn = null;

		try {

			LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
			user_id = logOnDTO.getUser_id();
			//productid = request.getParameter("productid");
			quickyn = request.getParameter("quickyn");
			System.out.println(quickyn);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">OrderHandler process parseInt Exception");
		} // try_catch
		
		// 장바구니 전체 구매
		List<BasketDTO> blist = null;
		BasketListService basketListService = BasketListService.getInstance();
		// 배송지 목록 가져오기
		List<DeliveryDTO> dlist = null;
		OrderService orderService = OrderService.getInstance();
		if (quickyn == null || quickyn.equals("null")) {
			quickyn = "N";
		}
		System.out.println("order qu:" + quickyn);
		blist = basketListService.basketListService(user_id, quickyn);
		request.setAttribute("blist", blist);
		dlist = orderService.deliveryService(user_id);
		request.setAttribute("dlist", dlist);
		
		return "/view/order/order.jsp";
	}

}
