package productDetail.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;

public class ProductDetailHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("ProductDetailHandler process..");
		
		String displNum = request.getParameter("displNum");
		String cLId; // 대분류 ID
		String cMId; // 중분류 ID
		String cSId; // 소분류 ID
		
		if (displNum.length() == 8) {
			cLId = displNum.substring(0,4);
			cMId = displNum.substring(4,8);
		} else {
			cLId = displNum.substring(0,4);
			cMId = displNum.substring(4,8);
			cSId = displNum.substring(8,12);
		} // if else
		
		
		
		
		
		return "/view/product/product.jsp";
	} // process

} // class
