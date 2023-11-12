package basket.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import basket.domain.ItemListDTO;
import basket.service.BasketListService;
import command.CommandHandler;

public class ItemListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("> ItemListHandler.process...");
		String displ_id = null;
		
		try {
			displ_id = request.getParameter("displID");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">ItemListHandler process Exception");
		}
		List<ItemListDTO> itemlist = null;
		BasketListService basketListService = BasketListService.getInstance();
		
		itemlist = basketListService.itemListService(displ_id);
		request.setAttribute("itemlist", itemlist);
		
		request.getRequestDispatcher("/view/basket/itemlist.jsp").forward(request, response);
		
		return null;
	}

}
