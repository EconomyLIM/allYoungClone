package eventShop.command;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import eventShop.domain.ProEventInfoDTO;
import eventShop.domain.ProEventProductDTO;
import eventShop.service.ProEventService;
import product.domain.PMidListDTO;

public class PlanShopHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String eventId = request.getParameter("eventId");
		
		ProEventService eventService = ProEventService.getinstance();
		
		// ============ 이벤트의 정보들을 갖고오는 작업 ============
		ProEventInfoDTO eventInfo = eventService.sGetEventInfo(eventId);
		request.setAttribute("eventInfo", eventInfo);
		
		// ============ 이벤트의 카테고리와 상품들을 갖고오는 작업 ============
		HashMap<ProEventProductDTO, List<PMidListDTO>> map = eventService.sGetEventProduct(eventId);
		if (map != null) {
			request.setAttribute("map", map);
		} // if
		
		// ============ Luxe Edit 작업 =====================
		if (eventId.equals("le_00000001")) {
			
			return "/view/planShop/planShopLuxe.jsp";
		} else{
			
			return "/view/planShop/planShop.jsp"; //luxeEdit 가 아닐시 
		}// if
		
		
		
		
	} // process

} // PlanShop
