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
		int infoUpd = 0;
		try {
			conn = ConnectionProvider.getConnection();
			OuserDAOImpl dao = OuserDAOImpl.getInstance();
			infoUpd =  dao.infoUpdate(conn, user_id, newEmail, newPwd);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("InfoUpdateService.infoUpdateException");
		}
		return infoUpd;
		
	}
	public int nameUpdate(String user_id, String newName) {
		Connection conn = null;
		int nameUpd = 0;
		try {
			conn = ConnectionProvider.getConnection();
			OuserDAOImpl dao = OuserDAOImpl.getInstance();
			nameUpd =  dao.nameUpdate(conn, user_id, newName);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("InfoUpdateService.nameUpdateException");
		}
		return nameUpd;
		
	}
	public int telUpdate(String user_id, String newTel) {
		Connection conn = null;
		int telUpd = 0;
		try {
			conn = ConnectionProvider.getConnection();
			OuserDAOImpl dao = OuserDAOImpl.getInstance();
			telUpd =  dao.telUpdate(conn, user_id, newTel);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("telUpdateService.nameUpdateException");
		}
		return telUpd;
		
	}
}
