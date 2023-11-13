package head.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import head.domain.EventDTO;
import head.domain.GiftCardDTO;
import head.persistence.HeadDAO;
import head.persistence.HeadDAOImpl;

public class HeadService {
	private static HeadService headService;
	
	private HeadService() {}
	
	public static HeadService getInstance() {
		if(headService == null) {
			headService = new HeadService();
		}
		
		return headService;
	}
	
	public List<String> getAttShopNames(String user_id) {
		List<String> AttShopNames = null;
		
		HeadDAO dao = HeadDAOImpl.getInstance();
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			AttShopNames = dao.selectAttShopName(conn, user_id);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}
		
		return AttShopNames;
	}

	public List<GiftCardDTO> getGiftCardList() {
		HeadDAO dao = null;
		Connection conn = null;
		
		List<GiftCardDTO> list = null;
		
		try {
			dao = HeadDAOImpl.getInstance();
			conn = ConnectionProvider.getConnection();
			list = dao.selectAllGiftCard(conn);
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}
		
		return list;
	}

	public GiftCardDTO getGiftCard(String giftCard_id) {
		HeadDAO dao = null;
		Connection conn = null;
		GiftCardDTO dto = null;
			
		try {
			dao = HeadDAOImpl.getInstance();
			conn = ConnectionProvider.getConnection();
			dto = dao.selectOneGiftCard(conn, giftCard_id);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}
		
		return dto;
	}

	public List<EventDTO> getEventList(String type) {
		List<EventDTO> list = null;
		
		Connection conn = null;
		HeadDAO dao = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			dao = HeadDAOImpl.getInstance();
			
			list = dao.selectAllEvent(conn, type);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public EventDTO getEvent(String event_id) {
		EventDTO dto = null;
		Connection conn = null;
		HeadDAO dao = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			dao = HeadDAOImpl.getInstance();
			
			dto = dao.selectOneEvent(conn, event_id);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return dto;
	}
}
