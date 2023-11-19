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

@WebServlet("/olive/getProStockAjax.do")
public class ProStockAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		
		String products = request.getParameter("products");
		System.out.println("products : " + products);
		String[] productStr = products.split(",");
		OrderService service = OrderService.getInstance();
		int cnt = service.getProStock(productStr);
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("cnt", cnt);
		
		System.out.println(jsonObject);
		
		writer.write(jsonObject.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
