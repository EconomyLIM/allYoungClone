package head.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import head.domain.EventDTO;
import head.service.HeadService;

public class EventHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String location = "";
		String type = request.getParameter("type");
		if(type == null || type.equals("")) type = "모든회원";
		
		System.out.println(type);
		
		List<EventDTO> list = null;
		HeadService service = null;
		
		try {
			service = HeadService.getInstance();
			list = service.getEventList(type);
			
			location = "/view/mainPage/event.jsp";
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("type", type);
		request.setAttribute("list", list);
		
		return location;
	}

}
