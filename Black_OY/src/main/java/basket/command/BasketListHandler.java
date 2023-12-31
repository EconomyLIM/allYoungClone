package basket.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import basket.domain.BasketDTO;
import basket.service.BasketListService;
import command.CommandHandler;
import main.service.MainService;
import product.domain.PMidListDTO;
import product.domain.PbrandListDTO;
import product.domain.PlowcateDTO;

import user.domain.LogOnDTO;
import user.service.LogOnService;

public class BasketListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("> BasketListHandler.process...");
		String user_id = null;
		String productid = null;
		HttpSession session = request.getSession();
		String refer = null;
		String quickyn = null;
		
		/*
		 * if (session.getAttribute("logOn") == null) { refer = request.getRequestURI();
		 * session.setAttribute("refer", refer);
		 * //response.sendRedirect("/Black_OY/olive/LogOn.do"); return
		 * "/view/logon/logon.jsp"; }
		 */
		// 파라미터 값으로 대분류 번호 갖고오기
		try {
			
			LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
			user_id = logOnDTO.getUser_id();
			productid = request.getParameter("productid");
			quickyn = request.getParameter("quickyn");	
			System.out.println(quickyn);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">basketlisthandler process parseInt Exception");
		} // try_catch
		
		//  1. 초기화
		List<BasketDTO> list = null;
		BasketListService basketListService = BasketListService.getInstance();
		LogOnService logOnService = LogOnService.getInstance();
		if (quickyn == null || quickyn.isEmpty()) {
			quickyn = "N";
		}
		System.out.println("handler:"+quickyn);
		if (productid != null) {
			int row = basketListService.basketListDeleteService(user_id, productid, quickyn);
			List<Integer> cnt = logOnService.basketcntService(user_id);
			session.setAttribute("basketlistcnt", cnt);
			
		}
		
		MainService mainService = MainService.getinstance();
		List<PMidListDTO> pdList = mainService.simmilarBuy(user_id);
		
		request.setAttribute("pdList", pdList);
		
		List<Integer> cnt = logOnService.basketcntService(user_id);
		session.setAttribute("basketlistcnt", cnt);
		
		list = basketListService.basketListService(user_id, quickyn);
		request.setAttribute("list", list);
		
		
		
		
		return "/view/basket/basket.jsp";
	
	}

}
