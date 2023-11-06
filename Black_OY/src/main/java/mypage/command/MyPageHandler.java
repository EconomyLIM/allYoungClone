package mypage.command;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import command.CommandHandler;

public class MyPageHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
			
		//파라미터값으로 회원id가져오기
		String UserID = null;
		
		Connection conn = ConnectionProvider.getConnection();
		
		
		return "mypage/mypagemain.jsp";
	}

}
