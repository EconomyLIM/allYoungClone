package productDetail.command;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import productDetail.domain.WrtieQnaDTO;
import productDetail.service.ProDetailService;


@WebServlet("/WriteQna")
public class WriteQna extends HttpServlet {


	private static final long serialVersionUID = -9028528604130297062L;


	public WriteQna() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("userId");
		String displId = request.getParameter("displId");
		String question = request.getParameter("contentVal");
		String goodsNo = request.getParameter("goodsNo");
		
		WrtieQnaDTO writeQna = WrtieQnaDTO.builder()
				.displId(displId)
				.userId(userId)
				.contentVal(question)
				.build();
		ProDetailService proDetailService = ProDetailService.getinstance();
		int rowcnt = proDetailService.sWriteQna(writeQna);
		
		if (rowcnt == 1) {
			System.out.println(">>> WriteQna >> 등록완료");
		}
		
		
		response.sendRedirect("/Black_OY/olive/productDetail.do?goodsNo="+goodsNo);
		
	}

}
