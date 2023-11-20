package head.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

import head.domain.CateMDTO;
import head.domain.EventDTO;
import head.domain.GiftCardDTO;
import head.domain.ProductHistoryDTO;

public class HeadDAOImpl implements HeadDAO {
	private static HeadDAOImpl dao;
	
	private HeadDAOImpl() {}
	public static HeadDAOImpl getInstance() {
		if(dao == null) {
			dao = new HeadDAOImpl();
		}
		
		return dao;
	}
	
	@Override
	public List<String> selectAttShopName(Connection conn, String user_id) throws SQLException {
		List<String> AttShopNames = null;
		
		String sql = "SELECT store_name "
				+ "	  FROM store "
				+ "   WHERE store_id IN ( "
				+ "    	SELECT store_id "
				+ "    	FROM att_shop "
				+ "    	WHERE user_id=? "
				+ "   )";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				AttShopNames = new ArrayList<>();
				do {
					AttShopNames.add(rs.getString("store_name"));
				} while (rs.next());
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}
		
		return AttShopNames;
	}
	@Override
	public List<GiftCardDTO> selectAllGiftCard(Connection conn) throws SQLException {
		List<GiftCardDTO> list = null;
		GiftCardDTO dto = null;
		
		String sql = "SELECT * "
				+ " FROM giftcard";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				list = new ArrayList<>();
				do {
					dto = new GiftCardDTO(rs.getString("giftcard_id")
							, rs.getString("gc_name")
							, rs.getString("gc_cate")
							, rs.getString("gc_img_src"));
					list.add(dto);
				} while (rs.next());
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}
		
		return list;
	}
	
	@Override
	public GiftCardDTO selectOneGiftCard(Connection conn, String giftCard_id) throws SQLException {
		GiftCardDTO dto = null;
		
		String sql = "SELECT * "
				+ " FROM giftcard "
				+ " WHERE giftcard_id=? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, giftCard_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto = GiftCardDTO.builder()
						.giftcard_id(rs.getString("giftcard_id"))
						.gc_name(rs.getString("gc_name"))
						.gc_cate(rs.getString("gc_cate"))
						.gc_img_src(rs.getString("gc_img_src"))
						.build();
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}
		
		return dto;
	}
	@Override
	public List<EventDTO> selectAllEvent(Connection conn, String type) throws SQLException {
		List<EventDTO> list = null;
		EventDTO dto = null;
		
		String sql = "SELECT * "
				+ " FROM event "
				+ " WHERE e_cate=?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, type);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				list = new ArrayList<>();
				do {
					dto = EventDTO.builder()
							.event_id(rs.getString("event_id"))
							.pro_displ_id(rs.getString("pro_displ_id"))
							.e_title(rs.getString("e_title"))
							.e_ltitle(rs.getString("e_ltitle"))
							.e_decate(rs.getString("e_decate"))
							.e_dis(rs.getString("e_dis"))
							.e_cate(rs.getString("e_cate"))
							.e_img_src(rs.getString("e_img_src"))
							.e_dimg_src(rs.getString("e_dimg_src"))
							.e_start(rs.getDate("e_start"))
							.e_end(rs.getDate("e_end"))
							.build();
							
					list.add(dto);
				} while (rs.next());
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}
		
		return list;
	}
	@Override
	public EventDTO selectOneEvent(Connection conn, String event_id) throws SQLException {
		EventDTO dto = null;
		
		String sql = "SELECT * "
				+ " FROM event "
				+ " WHERE event_id=?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, event_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto = EventDTO.builder()
						.event_id(rs.getString("event_id"))
						.pro_displ_id(rs.getString("pro_displ_id"))
						.e_title(rs.getString("e_title"))
						.e_ltitle(rs.getString("e_ltitle"))
						.e_decate(rs.getString("e_decate"))
						.e_dis(rs.getString("e_dis"))
						.e_cate(rs.getString("e_cate"))
						.e_img_src(rs.getString("e_img_src"))
						.e_dimg_src(rs.getString("e_dimg_src"))
						.e_start(rs.getDate("e_start"))
						.e_end(rs.getDate("e_end"))
						.build();
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}
		
		return dto;
	}
	@Override
	public List<CateMDTO> selectCateMName(Connection conn) throws SQLException {
		List<CateMDTO> list = null;
		CateMDTO dto = null;
		String sql = "SELECT c.cat_m_id, cat_m_name "
				+ " FROM cate_m c JOIN order_product o ON c.cat_m_id = o.cat_m_id "
				+ " GROUP BY c.cat_m_id, cat_m_name "
				+ " HAVING sum(product_cnt) > 100";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				list = new ArrayList<>();
				do {
					dto = CateMDTO.builder()
							.cat_m_id(rs.getString("cat_m_id"))
							.cat_m_name(rs.getString("cat_m_name"))
							.build();
					
					list.add(dto);
				} while (rs.next());
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}
		
		return list;
	}
	
	// 최근 본 상품
	@Override
	public ProductHistoryDTO productHistory(Connection conn, String pro_id) throws Exception {
		// TODO Auto-generated method stub
		String sql = " select * from pmlistview where pro_displ_id = ? ";
		ProductHistoryDTO historyDTO = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pro_id);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				historyDTO = new ProductHistoryDTO();
				historyDTO = ProductHistoryDTO.builder()
						.PRO_DISPL_SRC(rs.getString("PRO_DISPL_SRC"))
						.BRAND_NAME(rs.getString("BRAND_NAME"))    
						.BRAND_ID(rs.getString("BRAND_ID"))      
						.PRO_DISPL_NAME(rs.getString("PRO_DISPL_NAME"))
						.PROPRICE(rs.getString("PROPRICE"))      
						.CAT_L_ID(rs.getString("CAT_L_ID"))      
						.CAT_M_ID(rs.getString("CAT_M_ID"))      
						.CAT_S_ID(rs.getString("CAT_S_ID"))      
						.AFTERPRICE(rs.getString("AFTERPRICE"))    
						.PRO_DISPL_ID(rs.getString("PRO_DISPL_ID"))  
						.PRO_ID(rs.getString("PRO_ID"))        
						.PRC(rs.getString("PRC"))           
						.PDC(rs.getString("PDC"))           
						.PMP(rs.getString("PMP"))           
						.STOCK(rs.getString("STOCK"))         
						.ORDERCNT(rs.getString("ORDERCNT"))      
						.PRO_STOCK(rs.getString("PRO_STOCK"))     
						.PRO_DISPL_LIKE(rs.getString("PRO_DISPL_LIKE"))
						.PRO_REG(rs.getString("PRO_REG"))  
						.build();
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}
		
		return historyDTO;
	}//productHistory

}
