package mypage.qna.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import mypage.main.domain.MpQnADTO;
import mypage.orderDelivery.service.MPOrderDeliveryService;
import mypage.qna.persistence.MPPrdQnADAOImpl;

public class MPPrdQnAService {
	
	private static MPPrdQnAService instance = null;
	private MPPrdQnAService() {}
	public static MPPrdQnAService getinstance() {
		if (instance == null) {
			instance = new MPPrdQnAService();
		}
		return instance;
	}	// getinstance()
	
	public List<MpQnADTO> mpprdQnAService(String uId, String start, String end){
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MPPrdQnADAOImpl daoImpl = MPPrdQnADAOImpl.getinstance();
			List<MpQnADTO> list = null;
			list = daoImpl.selectUserQnA(conn, uId, start, end);
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> MPPrdQnAService mpprdQnAService Exception");
		}finally {
			JDBCUtil.close(conn);
		}
		return null;
	}
	
	
}
