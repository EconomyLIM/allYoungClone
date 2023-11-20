package head.service;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import head.domain.CateMDTO;
import head.domain.EventDTO;
import head.domain.GiftCardDTO;
import head.domain.ProductHistoryDTO;
import head.persistence.HeadDAO;
import head.persistence.HeadDAOImpl;
import product.domain.PMidListDTO;
import productDetail.domain.CateLDTO;

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
		} finally {
			JDBCUtil.close(conn);
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
		} finally {
			JDBCUtil.close(conn);
		}
		
		
		return dto;
	}

	public List<CateMDTO> getCateMRanking() {
		List<CateMDTO> list  = null;
		Connection conn = null;
		HeadDAO dao = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			dao = HeadDAOImpl.getInstance();
			
			list = dao.selectCateMName(conn);
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}
		
		
		return list;
	}
	
	public ProductHistoryDTO productHistoryService(String pro_id) {
		ProductHistoryDTO historyDTO = null;
		Connection conn = null;
		HeadDAO dao = null;
		try {
			conn = ConnectionProvider.getConnection();
			dao = HeadDAOImpl.getInstance();
			
			historyDTO = dao.productHistory(conn, pro_id);
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}
		
		return historyDTO;
	}

	public List<PMidListDTO> getSalesRanking(String mid) {
		List<PMidListDTO> list = null;
		
		Connection conn = null;
		HeadDAO dao = null;
		try {
			conn = ConnectionProvider.getConnection();
			dao = HeadDAOImpl.getInstance();
			
			list = dao.selectSalesRanking(conn, mid);
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}
		
		return list;
	} // getSalesRanking
	
	// ======================= 대분류 중분류 갖고오는 서비스 ======================
	public Map<CateLDTO, List<CateMDTO>> sGetCate(int cate){
		
		Map<CateLDTO, List<CateMDTO>> hashmap = null;
		Connection conn = null;
		HeadDAO dao = null;
		
		try {
			
			conn = ConnectionProvider.getConnection();
			dao = HeadDAOImpl.getInstance();
			hashmap = dao.getCate(conn, cate);
			System.out.println(hashmap);
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		return hashmap;
	} // sGetCate
	
	
	
} // class
