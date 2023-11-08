package store.command;

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
import store.domain.StoreTimeDTO;
import store.service.StoreService;

@WebServlet("/store/getAttShopList.do")
public class StoreAttShop extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("StoreAttShop.doGet() called~~");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String user_id = request.getParameter("user_id");
		
		StoreService service = StoreService.getinstance();
		List<StoreTimeDTO> list = service.getAttShopList(user_id);
		
		if(list == null) {
			out.write("");
			return;
		}
		
		JSONObject jsonObject = new JSONObject();
		JSONArray stores = new JSONArray();
		JSONObject store = null;
		
		Iterator<StoreTimeDTO> ir = list.iterator();
		while (ir.hasNext()) {
			store = new JSONObject();
			StoreTimeDTO dto = ir.next();
			store.put("store_id", dto.getStore_id());
			store.put("district_id", dto.getDistrict_id());
			store.put("store_name", dto.getStore_name());
			store.put("store_tel", dto.getStore_tel());
			store.put("store_addr", dto.getStore_addr());
			store.put("store_dir", dto.getStore_dir());
			store.put("store_parking", dto.getStore_parking());
			store.put("store_spec", dto.getStore_spec());
			store.put("store_fav", dto.getStore_fav());
			store.put("weekday", dto.getWeekday());
			store.put("saturday", dto.getSaturday());
			store.put("sunday", dto.getSunday());
			store.put("holiday", dto.getHoliday());
			stores.add(store);
		}
		
		
		jsonObject.put("stores", stores);
		
		out.write(jsonObject.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
