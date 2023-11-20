package order.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;
import order.domain.PaymentDTO;
import order.service.OrderService;

@WebServlet("/olive/getPayment.do")
public class GetPaymentAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		
		String order_id = request.getParameter("order_id");
		System.out.println("order_id : " + order_id);
		OrderService service = OrderService.getInstance();
		PaymentDTO dto = service.getPayment(order_id);
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("pay_id", dto.getPay_id());
		jsonObject.put("order_id", dto.getOrder_id());
		jsonObject.put("total_price", dto.getTotal_price());
		jsonObject.put("pay_price", dto.getPay_price());
		jsonObject.put("delivery_price", dto.getDelivery_price());
		jsonObject.put("cd_price", dto.getCd_price());
		jsonObject.put("point_price", dto.getPoint_price());
		jsonObject.put("pay_type", dto.getPay_type());
		jsonObject.put("saved_money", dto.getSaved_money());
		jsonObject.put("pay_date", dto.getPay_date());
		jsonObject.put("pay_status", dto.getPay_status());
		jsonObject.put("card_type", dto.getCard_type());
		jsonObject.put("inst_type", dto.getInst_type());
		jsonObject.put("cr_check", dto.getCr_check());
		
		System.out.println(jsonObject);
		
		writer.write(jsonObject.toString());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
