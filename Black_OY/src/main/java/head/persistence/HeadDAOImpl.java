package head.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import com.util.JDBCUtil;

import head.domain.CateMDTO;
import head.domain.EventDTO;
import head.domain.GiftCardDTO;
import head.domain.ProductHistoryDTO;
import product.domain.PMidListDTO;
import productDetail.domain.CateLDTO;

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
				+ " HAVING sum(product_cnt) > 50";
		
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
	@Override
	public List<PMidListDTO> selectSalesRanking(Connection conn, String mid) throws Exception {
		List<PMidListDTO> list = null;
		PMidListDTO dto = null;
		
		String sql = "SELECT * "
				+ " FROM pmlistview "
				+ " WHERE pro_id IN ( "
				+ "    SELECT product_id "
				+ "    FROM ( "
				+ "        SELECT product_id, sum(product_cnt) cnt "
				+ "        FROM order_product "
				+ "        GROUP BY product_id "
				+ "        ORDER BY cnt DESC "
				+ "    ) "
				+ "    WHERE ROWNUM <= 100 "
				+ " )";
		
		if(mid != "") {
			sql += " AND cat_m_id = ?";
		}
		
		System.out.println(sql);
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			if(mid != "") {
				pstmt.setString(1, mid);
			}
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				list = new ArrayList<>();
				do {
					dto = PMidListDTO.builder()
							.displImgSrc(rs.getString("pro_displ_src"))
							.brandName(rs.getString("brand_name"))
							.brandId(rs.getString("brand_id"))
							.displProName(rs.getString("pro_displ_name"))
							.lid(rs.getString("cat_l_id"))
							.mid(rs.getString("cat_m_id"))
							.sid(rs.getString("cat_s_id"))
							.proPrice(rs.getString("proprice"))
							.afterPrice(rs.getString("afterprice"))
							.displId(rs.getString("pro_displ_id"))
							.productID(rs.getString("pro_id"))
							.prc(rs.getInt("prc"))
							.pdc(rs.getInt("pdc"))
							.pmp(rs.getInt("pmp"))
							.stock(rs.getInt("stock"))
							.ordercnt(rs.getInt("ordercnt"))
							.displLike(rs.getInt("pro_displ_like"))
							.proReg(rs.getDate("pro_reg"))
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
	// ============================= 대분류 카테고리 갖고오기 =================== 
	@Override
	public List<CateLDTO> getCateL(Connection conn, int cate) throws Exception {
		String sql = " SELECT * FROM cate_l ";
		
		if (cate == 1) {
			sql += " WHERE cate_h_id = 1 ";
		} else if(cate == 2){
			sql += " WHERE cate_h_id = 2 ";
		} else if(cate == 3) {
			sql += " WHERE cate_h_id = 3 ";
		} //if
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		CateLDTO dto = null;
		List<CateLDTO> list = null;
		String lid;
		String lname;
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					
					lid = rs.getString("cat_l_id");
					lname = rs.getString("cat_l_name");
					
					dto = new CateLDTO(lid, lname);
					
					list.add(dto);
					
				} while (rs.next());
				
			} // if
			
		} catch(Exception e) {
			System.out.println(" HeadDAOImpl getCateL Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		} // try catch
		
		return list;
	} // getCateL
	
	// ============================= 중분류 카테고리 갖고오기 =================== 
	@Override
	public Map<CateLDTO, List<CateMDTO>> getCate(Connection conn, int cate) throws Exception {
		String sql = " SELECT ch.cat_h_id, cl.cat_l_id, cl.cat_l_name, cm.cat_m_id, cm.cat_m_name from cate_l cl "
				+ " JOIN cate_m cm ON cl.cat_l_id = cm.cat_l_id "
				+ " JOIN cate_h ch ON ch.cat_h_id = cl.cat_h_id "
				+ " WHERE ch.cat_h_id = ? "
				+ " ORDER BY cl.cat_l_id asc ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		CateLDTO ldto = null;
		CateMDTO mdto = null;
		List<CateMDTO> list = null;
		Map<CateLDTO, List<CateMDTO>> hashMap = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cate);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				hashMap = new LinkedHashMap<CateLDTO, List<CateMDTO>>();
				do {
					
					ldto = new CateLDTO(rs.getString("cat_l_id"), rs.getString("cat_l_name"));
					
					if ( !hashMap.containsKey(ldto) ) {
						list = new ArrayList<>();
						hashMap.put(ldto, list);
					} // if
					
					mdto = new CateMDTO(rs.getString("cat_m_id"), rs.getString("cat_l_id"), rs.getString("cat_m_name"));
					list = hashMap.get(ldto);
					
					list.add(mdto);
					
					
				} while (rs.next());
				System.out.println(" HeadDAOImpl getCate ...");
			} // if
			
		} catch(Exception e) {
			System.out.println(" HeadDAOImpl getCateL Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		} // try catch
		
		
		return hashMap;
	} // 

}
