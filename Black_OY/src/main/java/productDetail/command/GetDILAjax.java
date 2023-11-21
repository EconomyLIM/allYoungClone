package productDetail.command;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import productDetail.service.DBLService;
import productDetail.service.DILService;
import user.domain.LogOnDTO;

@WebServlet({"/GetDILAjax", "/GetDILAjaxP"})
public class GetDILAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String userId = null;
		boolean bisLiked = false;
		LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
		
		try {

			if (logOnDTO != null) {
				userId = logOnDTO.getUser_id();
				String proid = request.getParameter("proid");
				DILService dilService = DILService.getinstance();
				bisLiked = dilService.sIsLiked(userId, proid);
				System.out.println("GetDILAjax do get + " + bisLiked);
			} // if

		} catch (Exception e) {
			e.printStackTrace();
		}
		response.getWriter().write(String.valueOf(bisLiked));
	} // doGet


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String userId = null;
		boolean newLikeStatus = false;
		boolean bisLiked = false;
		
		LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");

		
		try {

			if (logOnDTO != null) {
				
				userId = logOnDTO.getUser_id();
				String proid = request.getParameter("proid");
				
				DILService dilService = DILService.getinstance();
				newLikeStatus = dilService.toggleLike(userId, proid);
				
				bisLiked = dilService.sIsLiked(userId, proid);
				System.out.println("GetDILAjax doPost + " + bisLiked);
				System.out.println("GetDILAjax doPost + " + newLikeStatus);
			} // if

		} catch (Exception e) {
			e.printStackTrace();
		} // try_catch
		
		
		response.getWriter().write(String.valueOf(bisLiked));
		
	} // doPost

} // class
