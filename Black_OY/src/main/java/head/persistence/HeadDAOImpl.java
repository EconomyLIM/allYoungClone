package head.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

import head.domain.GiftCardDTO;

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
	
	

}
