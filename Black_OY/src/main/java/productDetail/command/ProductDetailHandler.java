package productDetail.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;

public class ProductDetailHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("ProductDetailHandler process..");
		
		String displNum = request.getParameter("displNum");
		if (displNum.length() == 4) {
			
		} else {

		}
		
		return "/view/product/product.jsp";
	} // process

} // class
