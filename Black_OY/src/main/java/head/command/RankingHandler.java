 package head.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;

public class RankingHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String location = "";
		
		String click = request.getParameter("click");
		
		if(click == null || click.equals("")) click = "판매 랭킹";
		
		if(click.equals("판매 랭킹")) {
			location = "/view/mainPage/ranking.jsp";
		} else if(click.equals("리뷰 배스트")) {
			location = "";
		} else if(click.equals("실시간 랭킹")) {
			location = "";
		}
		
		return location;
	}

}
