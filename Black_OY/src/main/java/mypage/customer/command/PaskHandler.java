package mypage.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.CommandHandler;
import mypage.customer.service.CustomerService;
import mypage.main.domain.MpPAskDTO;
import user.domain.LogOnDTO;
import user.service.PwdUpdateService;

public class PaskHandler implements CommandHandler{
//	미완성
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("> pAsk.process...");
		
		String location = "";
		
		HttpSession session = request.getSession();
		LogOnDTO logDto = (LogOnDTO) request.getSession().getAttribute("logOn");
		
		if (logDto == null) {
			return "/view/logon/logon.jsp";
		}
		
		MpPAskDTO askDto = null;
	
		String user_id = request.getParameter("user_id");
		String paskcateId = request.getParameter("PaskcateId");
		String paskQuestion = request.getParameter("inqCont");
		askDto = new MpPAskDTO();
		
		CustomerService service = CustomerService.getInstance();
		int rowCount = service.addPask( askDto, logDto.getUser_id() );
		//1:1문의 글쓰기 완료
		if (rowCount ==1) {
			location = "/view/customer/pAskList.jsp";
		}
		return location;
	}
		
	

}
