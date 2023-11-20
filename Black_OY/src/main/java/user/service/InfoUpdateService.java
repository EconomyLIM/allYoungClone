package user.service;

import java.sql.Connection;

import com.util.ConnectionProvider;

import user.domain.LogOnDTO;
import user.domain.OuserDTO;
import user.persistence.OuserDAOImpl;

public class InfoUpdateService {
	private InfoUpdateService(){}
	private static InfoUpdateService instance = null;
	
	public static InfoUpdateService getInstance() {
		if (instance == null) {
			instance = new InfoUpdateService();
		}
		return instance;
	}
	
	public int infoUpdate(String user_id, String newEmail, String newPwd) {
		Connection conn = null;
		int rowCount = 0;
		try {
			conn = ConnectionProvider.getConnection();
			OuserDAOImpl dao = OuserDAOImpl.getInstance();
			rowCount =  dao.infoUpdate(conn, user_id, newEmail, newPwd);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rowCount;
		
	}
	public int nameUpdate(String user_id, String newName) {
		Connection conn = null;
		int rowCount = 0;
		try {
			conn = ConnectionProvider.getConnection();
			OuserDAOImpl dao = OuserDAOImpl.getInstance();
			rowCount =  dao.nameUpdate(conn, user_id, newName);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rowCount;
		
	}
}
