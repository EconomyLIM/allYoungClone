package order.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import order.domain.DeliveryDTO;
import order.service.OrderService;
import user.domain.LogOnDTO;

public class OrderHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String location = "";
		String method = request.getMethod();
		
		String user_id = ((LogOnDTO)request.getSession().getAttribute("logOn")).getUser_id();
		
		List<DeliveryDTO> list = null;
		DeliveryDTO dto = null;
		OrderService service = OrderService.getInstance();
		
		if(method.equals("GET")) {
			list = service.getDeliveryList(user_id);
			dto = service.getDeliveryOne(user_id);
			
			request.setAttribute("list", list);
			request.setAttribute("dto", dto);
			
			location = "/view/order/orderForm.jsp";
		} else { // POST
			
		}
		
		try {
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return location;
	}

}
