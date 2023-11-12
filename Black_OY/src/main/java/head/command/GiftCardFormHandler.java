package head.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import head.domain.GiftCardDTO;
import head.service.HeadService;

public class GiftCardFormHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String location = "";
		String method = request.getMethod();
		HeadService service = HeadService.getInstance();
		
		if(method.equals("GET")) {
			String giftCard_id = request.getParameter("giftcard_id");
			String type = request.getParameter("type");
			// System.out.println(giftCard_id + " / " + type);
			
			try {
				GiftCardDTO dto = service.getGiftCard(giftCard_id);
				request.setAttribute("dto", dto);
				request.setAttribute("type", type);
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			location = "/view/mainPage/giftCardForm.jsp";
		} else { // POST
			
		}
		return location;
	}

}
