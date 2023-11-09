//package user.service;
//
//import java.sql.Connection;
//import java.util.List;
//
//import com.util.ConnectionProvider;
//
//import user.domain.OuserDTO;
//import user.persistence.LogOnDAOImpl;
//
//public class JoinService {
//
//	private JoinService() {}
//	private static JoinService instance = null;
//	
//	public static JoinService getInstance() {
//		if (instance == null) {
//			instance = new JoinService();
//		}
//		return instance;
//	}
//	
//	public int addUser( OuserDTO dto) {
//		Connection conn = null;
//		try {
//			conn = ConnectionProvider.getConnection();
//			LogOnDAOImpl daoImpl = LogOnDAOImpl.getInstance();
//			
//	//		logdto = daoImpl.logselect(conn, user_id, u_pwd);
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	//	return logdto;
//		
//	} // logselectservice
//	
//	public List<Integer> basketcntService(String user_id) {
//		Connection conn = null;
//		List<Integer> list = null;
//		try {
//			conn = ConnectionProvider.getConnection();
//			LogOnDAOImpl daoImpl = LogOnDAOImpl.getInstance();
//			list = daoImpl.baskekcnt(conn, user_id);
//			
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return list;
//		
//	}
//	
//}
