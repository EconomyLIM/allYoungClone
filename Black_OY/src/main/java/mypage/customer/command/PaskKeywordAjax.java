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

import mypage.customer.domain.FaqDTO;
import mypage.customer.service.CustomerService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


@WebServlet("/olive/paskKeword.do")
public class PaskKeywordAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("PaskKeyword.doGet()");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		
		String faqkeyword = request.getParameter("faqkeyword");
		System.out.println(faqkeyword);
		
		CustomerService service = CustomerService.getInstance();
		List<FaqDTO> list = service.getKeyword(faqkeyword);

		JSONObject jsonObject = new JSONObject();
		JSONArray recommfaqs = new JSONArray();
		JSONObject recommfaq = null;
		
		Iterator<FaqDTO> ir = list.iterator();
		while (ir.hasNext()) {
			recommfaq = new JSONObject();
			FaqDTO dto = ir.next();
			recommfaq.put("faq_title", dto.getFaq_title());
			recommfaq.put("faq_content", dto.getFac_content());
			recommfaqs.add(recommfaq);
		}
	
		jsonObject.put("recommfaqs", recommfaqs);
		
		writer.write(jsonObject.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
