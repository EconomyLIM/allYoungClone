package order.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import order.domain.UserCouponDTO;
import order.service.OrderService;

@WebServlet("/olive/getCoupon.do")
public class GetHasCouponAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * response.setCharacterEncoding("utf-8"); PrintWriter writer =
		 * response.getWriter();
		 * 
		 * String user_id = request.getParameter("user_id");
		 * System.out.println("user_id : " + user_id);
		 * 
		 * UserCouponDTO dto = null; OrderService service = OrderService.getInstance();
		 * List<UserCouponDTO> list = service.getHasCouponList(user_id);
		 * 
		 * JSONObject jsonObject = new JSONObject(); JSONArray jsonArray = new
		 * JSONArray(); JSONObject userCoupon = null;;
		 * 
		 * Iterator<UserCouponDTO> ir = list.iterator(); while (ir.hasNext()) { dto =
		 * ir.next(); userCoupon = new JSONObject(); userCoupon.put("", dto.getUc_id());
		 * userCoupon.put("", dto.getUser_id()); userCoupon.put("", dto.getCoupon_id());
		 * userCoupon.put("", dto.getCoup_cate()); userCoupon.put("",
		 * dto.getCoup_name()); userCoupon.put("", dto.getCoup_price());
		 * userCoupon.put("", dto.getCoup_condition()); userCoupon.put("",
		 * dto.getCoup_start()); userCoupon.put("", dto.getCoup_end());
		 * jsonArray.add(userCoupon); }
		 * 
		 * jsonObject.put("userCoupon", jsonArray);
		 * 
		 * 
		 * System.out.println(jsonObject);
		 * 
		 * writer.write(jsonObject.toString());
		 */
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		
		String user_id = request.getParameter("user_id");
		System.out.println("user_id : " + user_id);
		
		UserCouponDTO dto = null;
		OrderService service = OrderService.getInstance();
		List<UserCouponDTO> list = service.getHasCouponList(user_id);
		
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		JSONObject userCoupon = null;;
		
		Iterator<UserCouponDTO> ir = list.iterator();
		while (ir.hasNext()) {
			dto = ir.next();
			userCoupon = new JSONObject();
			userCoupon.put("uc_id", dto.getUc_id());
			userCoupon.put("user_id", dto.getUser_id());
			userCoupon.put("coupon_id", dto.getCoupon_id());
			userCoupon.put("coup_cate", dto.getCoup_cate());
			userCoupon.put("coup_name", dto.getCoup_name());
			userCoupon.put("coup_price", dto.getCoup_price());
			userCoupon.put("coup_condition", dto.getCoup_condition());
			userCoupon.put("coup_start", dto.getCoup_start().toString());
			userCoupon.put("coup_end", dto.getCoup_end().toString());
			jsonArray.add(userCoupon);
		}
		
		jsonObject.put("userCoupon", jsonArray);
		
		
		System.out.println(jsonObject);
		
		writer.write(jsonObject.toString());
	}

}
