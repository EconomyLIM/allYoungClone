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
import store.domain.CityDTO;
import store.service.StoreService;

@WebServlet("/store/getStoreCity.do")
public class StoreCity extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("StoreCity.doGet() called~~");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		StoreService service = StoreService.getinstance();
		List<CityDTO> list = service.citySelectAll();
		
		CityDTO dto = null;
		JSONObject jsonObject = new JSONObject();
		JSONArray citys = new JSONArray();
		JSONObject city = null;
		
		Iterator<CityDTO> ir = list.iterator();
		while (ir.hasNext()) {
			city = new JSONObject();
			dto = ir.next();
			city.put("city_id", dto.getCity_id());
			city.put("city_name", dto.getCity_name());
			citys.add(city);
		}
		
		jsonObject.put("citys", citys);
		
		out.write(jsonObject.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
