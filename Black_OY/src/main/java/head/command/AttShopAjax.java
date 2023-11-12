package head.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import head.service.HeadService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@WebServlet("/olive/attShopAjax.do")
public class AttShopAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
		
		String user_id = request.getParameter("user_id");
		System.out.println("user_id : " + user_id);
		HeadService service = HeadService.getInstance();
		List<String> list = service.getAttShopNames(user_id);
		
		if(list == null) {
			writer.write("{\"storeNames\" : \"no\"}");
			return;
		}
		
		JSONObject jsonObject = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		
		Iterator<String> ir = list.iterator();
		while (ir.hasNext()) {
			jsonArray.add(ir.next());
		}
		jsonObject.put("storeNames", jsonArray);
		
		System.out.println(jsonObject);
		
		writer.write(jsonObject.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
