package mypage.customer.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypage.customer.service.CustomerService;
import net.sf.json.JSONObject;

@WebServlet("/olive/paskmaj.do")
public class PaskAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();

		CustomerService service = CustomerService.getInstance();
		List<String> list = service.getmajCate();
		JSONObject jsonObject = new JSONObject();
		for (int i = 0; i < list.size(); i++) {
			jsonObject.put("major"+(i+1), list.get(i));
		}
		System.out.println(jsonObject);
		
		writer.write(jsonObject.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
