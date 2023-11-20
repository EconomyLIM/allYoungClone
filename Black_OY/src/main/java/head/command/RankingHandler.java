 package head.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import head.service.HeadService;
import product.domain.PMidListDTO;

public class RankingHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String location = "";
		
		String click = request.getParameter("click");
		String mid = request.getParameter("mid");
		if(mid == null) mid = ""; 
		
		if(click == null || click.equals("")) click = "판매 랭킹";
		HeadService service = HeadService.getInstance();
		List<PMidListDTO> list = service.getSalesRanking(mid);
		// System.out.println(list);
		request.setAttribute("list", list);
		
		
		
		/*
		if(click.equals("판매 랭킹")) {
			location = "/view/mainPage/ranking.jsp";
		} else if(click.equals("리뷰 배스트")) {
			location = "";
		} else if(click.equals("실시간 랭킹")) {
			location = "";
		}
		*/
		location = "/view/mainPage/ranking.jsp";
		
		return location;
	}

}
