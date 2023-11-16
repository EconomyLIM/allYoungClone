package mypage.customer.command;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import command.CommandHandler;
import mypage.main.domain.MpPAskDTO;
import mypage.main.service.MypageService;
import user.domain.LogOnDTO;

public class PaskListHandler implements CommandHandler {

	// 1:1 문의내역 리스트

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userId = null;
		Connection conn = ConnectionProvider.getConnection();
		
		LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
		userId = logOnDTO.getUser_id();
		MypageService service = MypageService.getinstance();
		
		List<MpPAskDTO> userpAsk = null;
		userpAsk = service.mpUPAservice(userId);
		request.setAttribute("userpAsk", userpAsk);
		return "/view/customer/pAskList.jsp";
	}

}
