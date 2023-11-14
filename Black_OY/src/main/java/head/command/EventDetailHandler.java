package head.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import head.domain.EventDTO;
import head.service.HeadService;

public class EventDetailHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String location = "";
		
		String event_id = request.getParameter("event_id");
		
		HeadService service = null;
		EventDTO dto = null;
		
		try {
			service = HeadService.getInstance();
			dto = service.getEvent(event_id);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("dto", dto);
		
		location = "/view/mainPage/eventDetail.jsp";
		
		return location;
	}

}
