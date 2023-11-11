package basket.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import basket.service.BasketListService;
import command.CommandHandler;
import user.domain.LogOnDTO;

public class BasketUpdateHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("> BasketUpdateHandler.process...");
		String user_id = null;
		String productid = null;
		HttpSession session = request.getSession();
		int row;
		int row2;
		try {
			LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
			user_id = logOnDTO.getUser_id();
			productid = request.getParameter("productID");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">BasketUpdateHandler process Exception");
		}
		
		BasketListService basketListService = BasketListService.getInstance();
		row = basketListService.basketCheckService(user_id, productid);
		if (row == 1) {
			row2 = basketListService.basketUpdateService(user_id, productid);
		}else {
			row2 = basketListService.basketinsertService(user_id, productid);
		}
		
		return null;
	}

}
