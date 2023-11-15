package productDetail.command;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import productDetail.service.ProDetailService;

/**
 * Servlet implementation class DeleteQna
 */
@WebServlet("/DeleteQna")
public class DeleteQna extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DeleteQna() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String qnaId = request.getParameter("qnaId");
		System.out.println("DeleteQna doGet");
		String goodsNo = request.getParameter("goodsNo");
		ProDetailService proDetailService = ProDetailService.getinstance();
		int rowCnt = proDetailService.sDeleteQna(qnaId);
		
		System.out.println(rowCnt);
		System.out.println(request.getContextPath());
		
		response.sendRedirect("/Black_OY/olive/productDetail.do?goodsNo="+goodsNo);
		
		///olive/productDetail.do?goodsNo=pd_00000298
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
