package mypage.orderDelivery.command;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import command.CommandHandler;
import mypage.main.service.MypageService;

public class OrderDeliveryHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		String userId = null;
		
		Connection conn = ConnectionProvider.getConnection();
		
		//회원id가져오기
		
		// 현재 로그인 한 유저 id 가져올려면 아래 코드 쓰면 됨
		//LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
		//userId = logOnDTO.getUser_id();
		
		userId = "admin";	//request.getParameter("userId");
		
		
		
		return "/view/mypage/orderDelivery.jsp";
	}
	
	
}
