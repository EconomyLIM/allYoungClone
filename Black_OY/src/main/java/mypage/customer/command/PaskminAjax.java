package mypage.customer.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypage.customer.service.CustomerService;
import net.sf.json.JSONObject;

@WebServlet("/olive/paskmin.do")
public class PaskminAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setCharacterEncoding("utf-8"); 
		PrintWriter writer = response.getWriter();
		
		String ac_major = request.getParameter("ac_major");
		CustomerService service = CustomerService.getInstance();
		
		List<String> list = service.getminCate(ac_major); 
		JSONObject jsonObject = new JSONObject(); 
			for (int i = 0;	i < list.size(); i++) {
				jsonObject.put("minor"+(i+1), list.get(i)); 
			}
				System.out.println(jsonObject);

				writer.write(jsonObject.toString()); 
	}
	 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
