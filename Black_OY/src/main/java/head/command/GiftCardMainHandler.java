package head.command;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import head.domain.GiftCardDTO;
import head.service.HeadService;

public class GiftCardMainHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String method = request.getMethod();
		String location = "";
		
		if(method.equals("GET")) {
			HeadService service = HeadService.getInstance();
			try {
				List<GiftCardDTO> list = service.getGiftCardList();
				List<GiftCardDTO> nlist = new ArrayList<>();
				List<GiftCardDTO> tlist = new ArrayList<>();
				List<GiftCardDTO> olist = new ArrayList<>();
				
				Iterator<GiftCardDTO> ir = list.iterator();
				while (ir.hasNext()) {
					GiftCardDTO dto = ir.next();
					if(dto.getGc_cate().equals("NEW&BEST")) {
						nlist.add(dto);
					} else if(dto.getGc_cate().equals("감사&축하")) {
						tlist.add(dto);
					} else {
						olist.add(dto);
					}
				}
				
				request.setAttribute("nlist", nlist);
				request.setAttribute("tlist", tlist);
				request.setAttribute("olist", olist);
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			location = "/view/mainPage/giftCard.jsp";
		} else {
			
		}
		
		return location;
	}
	
}
