package user.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;

import user.domain.OuserDTO;
import user.persistence.LogOnDAOImpl;
import user.persistence.OuserDAOImpl;

public class JoinService {

	private JoinService() {}
	private static JoinService instance = null;
	
	public static JoinService getInstance() {
		if (instance == null) {
			instance = new JoinService();
		}
		return instance;
	}
	
	public int addUser( OuserDTO dto) {
		Connection conn = null;
		int rowCount = 0;
		try {
			conn = ConnectionProvider.getConnection();
			OuserDAOImpl dao = OuserDAOImpl.getInstance();
			rowCount =  dao.join(conn, dto);
			
		} catch (Exception e) {
			e.printStackTrace();
		
		}
		return rowCount;
		
	} // logselectservice
	
}
