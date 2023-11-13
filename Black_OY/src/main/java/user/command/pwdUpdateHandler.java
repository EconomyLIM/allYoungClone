//package user.command;
//
//import java.sql.Connection;
//import java.sql.SQLException;
//import java.util.Date;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import com.util.ConnectionProvider;
//
//import command.CommandHandler;
//import user.domain.OuserDTO;
//import user.persistence.OuserDAOImpl;
//import user.service.JoinService;
//
//
//public class pwdUpdateHandler implements CommandHandler{
//
//	@Override
//	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		request.setCharacterEncoding("utf-8");
//
//		String u_pwd=  request.getParameter("u_pwd");
//
//		System.out.println(u_pwd);
//
//		Connection conn = ConnectionProvider.getConnection();
//		OuserDAOImpl dao = OuserDAOImpl.getInstance();
//		OuserDTO dto = null;
//		try {
//			dto = dao.pwdUpdate(conn,u_pwd);
//		} catch (SQLException e) {
//			System.out.println("> JoinCheckHandler.process Exception!");
//			e.printStackTrace();
//		}
//		conn.close();
//
//		request.setAttribute("dto", dto);
//
//		String location = " ";
//
//		HttpSession session = request.getSession();
//		session.setAttribute("u_pwd", u_pwd);
//
//		return location;
//	}
//}
