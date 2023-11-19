package user.service;

import java.sql.Connection;

import com.util.ConnectionProvider;

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
	
	public int infoUpdate( OuserDTO dto) {
		Connection conn = null;
		int rowCount = 0;
		try {
			conn = ConnectionProvider.getConnection();
			OuserDAOImpl dao = OuserDAOImpl.getInstance();
			rowCount =  dao.infoUpdate(conn, dto);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rowCount;
		
	}
}
