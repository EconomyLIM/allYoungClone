package user.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;

import user.domain.LogOnDTO;
import user.persistence.LogOnDAOImpl;

public class LogOnService {

	private LogOnService() {}
	private static LogOnService instance = null;
	
	public static LogOnService getInstance() {
		if (instance == null) {
			instance = new LogOnService();
		}
		return instance;
	}
	
	public LogOnDTO logselectService(String user_id, String u_pwd) {
		Connection conn = null;
		LogOnDTO logdto = null;
		try {
			conn = ConnectionProvider.getConnection();
			LogOnDAOImpl daoImpl = LogOnDAOImpl.getInstance();
			
			logdto = daoImpl.logselect(conn, user_id, u_pwd);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return logdto;
		
	} // logselectservice
	
	public List<Integer> basketcntService(String user_id) {
		Connection conn = null;
		List<Integer> list = null;
		try {
			conn = ConnectionProvider.getConnection();
			LogOnDAOImpl daoImpl = LogOnDAOImpl.getInstance();
			list = daoImpl.baskekcnt(conn, user_id);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
	
}
