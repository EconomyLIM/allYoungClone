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

import head.domain.CateMDTO;
import head.service.HeadService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@WebServlet("/olive/getCateMRankingAjax")
public class CateMRankingAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();

		HeadService service = HeadService.getInstance();

		List<CateMDTO> list = service.getCateMRanking();
		CateMDTO dto = null;
		JSONObject jsonObject = new JSONObject();
		JSONArray array = new JSONArray();
		JSONObject cateM = null;
		
		Iterator<CateMDTO> ir = list.iterator();
		while (ir.hasNext()) {
			dto = ir.next();
			cateM = new JSONObject();
			cateM.put("cateMID", dto.getCat_m_id());
			cateM.put("cateMName", dto.getCat_m_name());
			array.add(cateM);
		}

		jsonObject.put("cateM", array);
		System.out.println(jsonObject);

		writer.write(jsonObject.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
