package basket.command;

import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import basket.service.BasketListService;
import command.CommandHandler;
import user.domain.LogOnDTO;

public class BasketMultiAddHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		LogOnDTO logOnDTO = (LogOnDTO)session.getAttribute("logOn");
		String user_id = logOnDTO.getUser_id();
		String[] products = request.getParameterValues("products");
		String quickYN = request.getParameter("quickYN"); // 오늘드림 여부
		
		int row;
		int row2;
		int cnt;
		String[] product_id = new String[products.length];
		BasketListService basketListService = BasketListService.getInstance();
		for (int i = 0; i < products.length; i++) {
			product_id[i] = products[i].split("-")[0];
		}
		//product_id[i] = products[i].split("-")[0]; // 상품 id
		//product_id[i] = products[i].split("-")[1];// 상품 수량
		for (int i = 0; i < product_id.length; i++) {
			row = basketListService.basketCheckService(user_id, product_id[i], quickYN);
			cnt = Integer.parseInt(products[i].split("-")[1]);
			if (row == 1) {
				row2 = basketListService.basketUpdateService(user_id, product_id[i], quickYN, cnt);
			}else {
				row2 = basketListService.basketinsertService(user_id, product_id[i], quickYN, cnt);
			}
		}
		
		
		return null;
	}

}
