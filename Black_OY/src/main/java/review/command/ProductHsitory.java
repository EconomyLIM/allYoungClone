package review.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import head.domain.ProductHistoryDTO;
import head.service.HeadService;

public class ProductHsitory implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 쿠키 값확인
				HeadService headService = HeadService.getInstance();
				List<ProductHistoryDTO> history = new ArrayList<ProductHistoryDTO>();
				ProductHistoryDTO historyDTO = null;
				Cookie[] cookies = request.getCookies();

				if (cookies != null) {
				    for (Cookie cookie : cookies) {
				        if (cookie.getName().equals("productItems")) {
				            // 원하는 쿠키 가져오기
				            String productItemsValue = cookie.getValue();
				            productItemsValue = java.net.URLDecoder.decode(productItemsValue, "UTF-8");
				            // 쿠키 값을 쉼표(,)를 기준으로 나누기
				            String[] items = productItemsValue.split(",");

				            // 각각의 값에 대해 작업하기
				            for (String item : items) {
				            	System.out.println(item);
				                // 각각의 item에 대해 headService.productHistoryService() 호출하여 historyDTO 생성
				                historyDTO = headService.productHistoryService(item);
				                history.add(historyDTO);
				            }
				        }
				    }
				}
				request.getSession().setAttribute("productHistory", history);
				request.getRequestDispatcher("/layout/headhistory.jsp").forward(request, response);
		return null;
	}

}
