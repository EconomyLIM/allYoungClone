package mypage.orderDelivery.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import mypage.orderDelivery.domain.MPODOrderDTO;
import mypage.orderDelivery.domain.MPODdeliveryDTO;
import mypage.orderDelivery.persistence.MPOrderDeliveryDAOImpl;

public class MPOrderDeliveryService {
	
	private static MPOrderDeliveryService instance = null;
	private MPOrderDeliveryService() {}
	public static MPOrderDeliveryService getinstance() {
		if (instance == null) {
			instance = new MPOrderDeliveryService();
		}
		return instance;
	}	// getinstance()
	
	//1. 주문목록 가져오기 서비스
	public List<MPODOrderDTO> mpODdeliveryService(String uId){
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MPOrderDeliveryDAOImpl daoImpl = MPOrderDeliveryDAOImpl.getinstance();
			List<MPODOrderDTO> list = null;
			list = daoImpl.selectUOrder(conn, uId);
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("> MPOrderDeliveryService.mpODdeliveryService Exception");
		} finally {
			JDBCUtil.close(conn);
		}
		return null;
	}
	
	//2.  상세 주문목록 가져오기 서비스
	
}
