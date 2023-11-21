package search.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import basket.domain.BasketDTO;
import basket.service.BasketListService;
import command.CommandHandler;
import search.domain.BrandSearchDTO;
import search.domain.SearchDTO;
import search.service.SearchService;
import user.domain.LogOnDTO;
import user.service.LogOnService;

public class SearchHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("> SearchHandler.process...");
		String word = null;
		

		try {
			
			word = request.getParameter("word");
			System.out.println(word);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">SearchHandler process parseInt Exception");
		} // try_catch
		
		//  1. 초기화
		List<SearchDTO> list = null;
		SearchService searchService = SearchService.getinstance();
		
		BrandSearchDTO brandSearchDTO = null;
		
		list = searchService.searchWordService(word);
		brandSearchDTO = searchService.BrandsearchWordService(word);
		request.setAttribute("word", word);
		request.setAttribute("list", list);
		request.setAttribute("brandSearch", brandSearchDTO);
		request.getRequestDispatcher("/layout/search.jsp").forward(request, response);
		
		return null;
	
	}

}
