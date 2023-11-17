package main.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import main.service.MainService;
import product.domain.PMidListDTO;
import user.domain.LogOnDTO;

public class MainPageHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
		String user_id = "user1";
		if (logOnDTO != null) {
			user_id = logOnDTO.getUser_id();
		} // if
		
		MainService mainService = MainService.getinstance();
		List<PMidListDTO> pdList = mainService.simmilarBuy(user_id);
		
		request.setAttribute("pdList", pdList);
		
		return "/view/mainPage/main.jsp";
	} // process

} // main
