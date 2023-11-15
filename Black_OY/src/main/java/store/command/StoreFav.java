package store.command;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import store.service.StoreService;

@WebServlet("/store/updStoreFav.do")
public class StoreFav extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("> StoreFav.doGet() called~~");
		new Date();
		String store_id = request.getParameter("store_id");
		int clickCheck = Integer.parseInt(request.getParameter("clickCheck"));
		String user_id = request.getParameter("user_id");
		
		System.out.println(store_id + " / " + clickCheck);
		
		StoreService service = StoreService.getinstance();
		int rowCount = service.addAttrShop(store_id, clickCheck, user_id);
		
		response.getWriter().write(rowCount + "");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
