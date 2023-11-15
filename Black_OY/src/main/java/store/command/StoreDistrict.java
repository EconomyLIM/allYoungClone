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
import store.domain.DistrictDTO;
import store.service.StoreService;

@WebServlet("/store/getStoreDistrict.do")
public class StoreDistrict extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("StoreDistrict.doGet() called~~");
		
		String city_id = request.getParameter("city_id");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		StoreService service = StoreService.getinstance();
		List<DistrictDTO> list = service.districtSelectAll(city_id);
		
		if(list == null) {
			out.write("");
			return;
		}
		
		DistrictDTO dto = null;
		JSONObject jsonObject = new JSONObject();
		JSONArray districts = new JSONArray();
		JSONObject district = null;
		
		Iterator<DistrictDTO> ir = list.iterator();
		while (ir.hasNext()) {
			district = new JSONObject();
			dto = ir.next();
			district.put("district_id", dto.getDistrict_id());
			district.put("district_name", dto.getDistrict_name());
			districts.add(district);
		}
		
		jsonObject.put("districts", districts);
		
		out.write(jsonObject.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
