package order.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;
import order.domain.DeliveryDTO;
import order.service.OrderService;

@WebServlet("/OrderDeliveryAjax")
public class OrderDeliveryAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		
		String order_id = request.getParameter("order_id");
		System.out.println("order_id : " + order_id);
		OrderService service = OrderService.getInstance();
		DeliveryDTO dto = service.getOrderDelivery(order_id);
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("delivery_id", dto.getDelivery_id());
		jsonObject.put("user_id", dto.getUser_id());
		jsonObject.put("deli_name", dto.getDeli_name());
		jsonObject.put("deli_zip", dto.getDeli_zip());
		jsonObject.put("deli_road_addr", dto.getDeli_road_addr());
		jsonObject.put("deli_addr", dto.getDeli_addr());
		jsonObject.put("deli_baddr", dto.getDeli_baddr());
		jsonObject.put("deli_recipient", dto.getDeli_recipient());
		jsonObject.put("deli_tel", dto.getDeli_tel());
		jsonObject.put("deli_tel2", dto.getDeli_tel2());
		jsonObject.put("req_select", dto.getReq_select());
		jsonObject.put("req_content", dto.getReq_content());
		jsonObject.put("def_del", dto.getDef_del());
		
		System.out.println(jsonObject);
		
		writer.write(jsonObject.toString());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
