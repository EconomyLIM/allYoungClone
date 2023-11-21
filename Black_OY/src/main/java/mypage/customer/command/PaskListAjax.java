package mypage.customer.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypage.main.domain.MpPAskDTO;
import mypage.main.service.MypageService;
import net.sf.json.JSONObject;

@WebServlet("/olive/paskList.do")
public class PaskListAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public PaskListAjax() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();

		String Uid = request.getParameter("Uid");
		MypageService service = MypageService.getinstance();
		List<MpPAskDTO> list = service.mpUPAservice(Uid);
		JSONObject jsonObject = new JSONObject();
		for (int i = 0; i < list.size(); i++) {
			jsonObject.put("question"+(i+1), list.get(i));
		}
		System.out.println(jsonObject);
		
		writer.write(jsonObject.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
