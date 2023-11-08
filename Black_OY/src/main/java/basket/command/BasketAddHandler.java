package basket.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import basket.domain.BasketDTO;
import basket.service.BasketListService;
import command.CommandHandler;
import user.domain.LogOnDTO;
import user.service.LogOnService;

public class BasketAddHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("> BasketAddHandler.process...");
		String user_id = null;
		String productid = null;
		HttpSession session = request.getSession();
		String refer = null;
		String quickyn = null;
		int productcnt = 0;

		try {
			
			LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
			user_id = logOnDTO.getUser_id();
			productid = request.getParameter("productid");
			quickyn = request.getParameter("quickyn");
			productcnt =  Integer.parseInt(request.getParameter("productcnt"));
			System.out.println(quickyn);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">basketlisthandler process parseInt Exception");
		} // try_catch
		
		//  1. 초기화
		List<BasketDTO> list = null;
		BasketListService basketListService = BasketListService.getInstance();
		LogOnService logOnService = LogOnService.getInstance();
		if (quickyn == null || quickyn.equals("") ||quickyn.equals("null")) {
			quickyn = "N";
		}
		System.out.println("애드핸들러 값:"+quickyn);
		if (productid != null) {
			int row = basketListService.basketAddService(user_id, productid, quickyn, productcnt);
			List<Integer> cnt = logOnService.basketcntService(user_id);
			session.setAttribute("basketlistcnt", cnt);
		}
		List<Integer> cnt = logOnService.basketcntService(user_id);
		session.setAttribute("basketlistcnt", cnt);
		
		list = basketListService.basketListService(user_id, quickyn);
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("/view/basket/basketadd.jsp").forward(request, response);
		
		return null;
	
	}

}
