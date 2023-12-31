package user.service;
import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import user.domain.LogOnDTO;
import user.persistence.OuserDAOImpl;

public class PwdUpdateService {


	private PwdUpdateService() {}
	private static PwdUpdateService instance = null;

	public static PwdUpdateService getInstance() {
		if (instance == null) {
			instance = new PwdUpdateService();
		}
		return instance;
	}

	public int PwdUpdate( String user_id, String newPwd) {
		Connection conn = null; 
		int rowCount = 0;
		try {
			conn = ConnectionProvider.getConnection();
			OuserDAOImpl dao = OuserDAOImpl.getInstance();
			rowCount =  dao.pwdUpdate(conn, user_id, newPwd);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rowCount;
	} 
}
