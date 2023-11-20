package mypage.orderDelivery.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import mypage.orderDelivery.domain.MPODOrderDTO;
import mypage.orderDelivery.domain.MPODdeliveryDTO;
import mypage.orderDelivery.domain.MPODpaymentDTO;
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
	
	//1.	주문목록 가져오기 서비스
	public List<MPODOrderDTO> mpODorderService(String uId){
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MPOrderDeliveryDAOImpl daoImpl = MPOrderDeliveryDAOImpl.getinstance();
			List<MPODOrderDTO> list = null;
			list = daoImpl.selectUOrder(conn, uId);
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> MPOrderDeliveryService.mpODorderService Exception");
		} finally {
			JDBCUtil.close(conn);
		}
		return null;
	}
	
	//2.	상세 주문목록 가져오기 서비스
	public List<MPODOrderDTO> mpODorderdetailService(String oId){
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MPOrderDeliveryDAOImpl daoImpl = MPOrderDeliveryDAOImpl.getinstance();
			List<MPODOrderDTO> list = null;
			list = daoImpl.selectUDetailOrder(conn, oId);
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> MPOrderDeliveryService.mpODorderdetailService Exception");
		} finally {
			JDBCUtil.close(conn);
		}
		return null;
	}
	//3.	주문 배송지 가져오기 서비스
	public List<MPODdeliveryDTO> mpODdeliveryService(String oId){
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MPOrderDeliveryDAOImpl daoImpl = MPOrderDeliveryDAOImpl.getinstance();
			List<MPODdeliveryDTO> list = null;
			list = daoImpl.selectUODelivery(conn, oId);
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> MPOrderDeliveryService.mpODdeliveryService Exception");
		}finally {
			JDBCUtil.close(conn);
		}
		return null;
	}
	//4.	주문 결제 가져오기 서비스
	public List<MPODpaymentDTO> mpODpaymentService(String oId){
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MPOrderDeliveryDAOImpl daoImpl = MPOrderDeliveryDAOImpl.getinstance();
			List<MPODpaymentDTO> list = null;
			list = daoImpl.selectUOPayment(conn, oId);
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> MPOrderDeliveryService.mpODpaymentService Exception");
		}finally {
			JDBCUtil.close(conn);
		}
		return null;
	}
	
	//5.	검색된 주문 날짜,유형별로 가져오기 서비스
	public List<MPODOrderDTO> mpODorderSearchService(String uId, String start, String end, String type){
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MPOrderDeliveryDAOImpl daoImpl = MPOrderDeliveryDAOImpl.getinstance();
			List<MPODOrderDTO> list = null;
			list = daoImpl.searchUOrder(conn, uId, start, end, type);
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> MPOrderDeliveryService.mpODorderSearchService Exception");
		} finally {
			JDBCUtil.close(conn);
		}
		return null;
	
	}

	//5.	검색된 주문 날짜별로 가져오기 서비스
	public List<MPODOrderDTO> mpODorderSearchService(String uId, String start, String end){
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MPOrderDeliveryDAOImpl daoImpl = MPOrderDeliveryDAOImpl.getinstance();
			List<MPODOrderDTO> list = null;
			list = daoImpl.searchUOrder(conn, uId, start, end);
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> MPOrderDeliveryService.mpODorderSearchService Exception");
		} finally {
			JDBCUtil.close(conn);
		}
		return null;
		
	}
	
	
}
