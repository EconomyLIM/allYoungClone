package mypage.like.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

import mypage.like.domain.BLikeDTO;
import mypage.main.domain.MpPlikeDTO;

public class LikeDAOImpl implements LikeDAO {
	
	private LikeDAOImpl() {}
	private static LikeDAOImpl instance = new LikeDAOImpl();
	public static LikeDAOImpl getinstance() {
		return instance;
	}
	
	@Override
	public List<MpPlikeDTO> selectPlike(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT pdi.pro_displ_src src , b.brand_name bname, pd.pro_displ_name displname "
				+ "				 , cs.cat_s_id csid "
				+ "              , cm.cat_m_id cmid	 "
				+ "				 ,a.pro_price pricep  "
				+ "				 ,  "
				+ "				 NVL(CASE   "
				+ "				         WHEN prc.promo_c_kind = 1 THEN a.pro_price + prc.promo_c_discount  "
				+ "				         WHEN prc.promo_c_kind = 2 THEN a.pro_price * (1-prc.promo_c_discount)  "
				+ "				         ELSE a.pro_price  "
				+ "				         END   "
				+ "				 , 0)  "
				+ "				 +  "
				+ "				 NVL(prd.promo_d_discount,0) as afterprice  "
				+ "				 , pd.pro_displ_id displid, p.pro_id pid  "
				+ "				 ,CASE   "
				+ "				         WHEN prc.promo_c_s <= SYSDATE AND prc.promo_c_e >= SYSDATE THEN '1'  "
				+ "				         ELSE '0'  "
				+ "				     END AS pmc  "
				+ "				 ,CASE   "
				+ "				         WHEN prd.promo_d_s <= SYSDATE AND prd.promo_d_e >= SYSDATE THEN '1'  "
				+ "				         ELSE '0'  "
				+ "				     END AS pmd  "
				+ "				 ,CASE   "
				+ "				         WHEN prp.promo_p_s <= SYSDATE AND prp.promo_p_e >= SYSDATE THEN '1'  "
				+ "				         ELSE '0'  "
				+ "				     END AS pmp  "
				+ "				 ,CASE   "
				+ "				         WHEN ss.store_id IS NOT NULL THEN '1'  "
				+ "				         ELSE '0'  "
				+ "				     END AS stock  "
				+ "				 FROM   "
				+ "				 product_display pd  "
				+ "				 JOIN p_like pl ON pd.pro_displ_id = pl.pro_displ_id  "
				+ "				 JOIN brand b ON pd.brand_id = b.brand_id  "
				+ "				 JOIN product p ON p.pro_displ_id = pd.pro_displ_id  "
				+ "			 JOIN pro_displ_img pdi ON pdi.pro_displ_id = pd.pro_displ_id  "
				+ "				 JOIN pro_prom pm ON pd.pro_displ_id = pm.pro_displ_id "
				+ "				 LEFT JOIN prom_c prc ON pm.prom_c_id = prc.prom_c_id  "
				+ "				 LEFT JOIN prom_d prd ON prd.prom_d_id = pm.prom_d_id  "
				+ "			 	 LEFT JOIN prom_p prp ON prp.prom_p_id = pm.prom_p_id  "
				+ "			 	 LEFT JOIN store_stock ss ON p.pro_id = ss.pro_id  "
				+ "			 	 LEFT JOIN cate_s cs on p.cat_s_id = cs.cat_s_id "
				+ "              LEFT JOIN cate_m cm on cs.cat_m_id = cm.cat_m_id "
				+ "				  JOIN (  "
				+ "				     SELECT pro_displ_id, pro_price,   "
				+ "			         RANK() OVER (PARTITION BY pro_displ_id ORDER BY pro_price DESC) as price_rank  "
				+ "				     FROM product  "
				+ "				 ) a ON a.pro_displ_id = pd.pro_displ_id AND a.price_rank = 1  "
				+ "                 where user_id= ? ";
		
		ArrayList<MpPlikeDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			rs = pstmt.executeQuery();
			MpPlikeDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<MpPlikeDTO>();
			
			do {
				dto = new MpPlikeDTO();
				dto.setPlImgsrc(rs.getString("src"));
				dto.setPlbrand(rs.getString("bname"));
				dto.setPlpdispN(rs.getString("displname"));
				dto.setPlcsid(rs.getString("csid"));
				dto.setPlcmid(rs.getString("cmid"));
				dto.setPlpricep(rs.getString("pricep"));
				dto.setPlpricea(rs.getString("afterprice"));
				dto.setPlpdispId(rs.getString("displid"));
				dto.setPlpId(rs.getString("pid"));
				dto.setPmc(rs.getInt("pmc"));
				dto.setPmd(rs.getInt("pmd"));
				dto.setPmp(rs.getInt("pmp"));
				dto.setStock(rs.getInt("stock"));
				list.add(dto);
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("> LikeDAOImpl_selectPlike() Exception");
		}
		
		return list;
	}

	@Override
	public int deletePlike(Connection conn, String uId, String plpdispId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " DELETE FROM p_like "
				+ " WHERE pro_displ_id = ? "
				+ " AND user_id = ? ";
		PreparedStatement pstmt = null;
		int rownum = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, plpdispId);
			pstmt.setString(2, uId);
			rownum = pstmt.executeUpdate();
					
			if (rownum == 0) {
				System.out.println("> LikeDAOImpl_deletePlike() delete fail");
				return 0;
			}
			
		} 
		 catch (Exception e) {
			e.printStackTrace();
			System.out.println("> LikeDAOImpl_deletePlike() Exception");
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(conn);
		}
		return rownum;
	}

	@Override
	public int deletePlikeAll(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " DELETE FROM p_like "
				+ " WHERE user_id = ? ";
		PreparedStatement pstmt = null;
		int rownum = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			rownum = pstmt.executeUpdate();
					
			if (rownum == 0) {
				System.out.println("> LikeDAOImpl_deletePlikeAll() delete fail");
				return 0;
			}	
		} 
		 catch (Exception e) {
			e.printStackTrace();
			System.out.println("> LikeDAOImpl_deletePlikeAll() Exception");
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(conn);
		}
		return rownum;
	}

	@Override
	public List<BLikeDTO> selectBlike(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT brand_name, brand_like, brand_img_src "
				+ " FROM b_like l left join brand b on l.brand_id = b.brand_id "
				+ "                left join brand_img i on b.brand_id = i.brand_id "
				+ " WHERE user_id = ? ";
		ArrayList<BLikeDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			rs = pstmt.executeQuery();
			BLikeDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<BLikeDTO>();
			
			do {
				dto = new BLikeDTO();
				dto.setBrandN(rs.getString("brand_name"));
				dto.setBamount(rs.getInt("brand_like"));
				dto.setBdisplsrc(rs.getString("brand_img_src"));
				list.add(dto);
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("> LikeDAOImpl_selectBlike() Exception");
		}
		
		return list;
	}

	@Override
	public int deleteBlike(Connection conn, String uId, String brandId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " DELETE FROM b_like "
				+ " WHERE brand_id = ? "
				+ "    and user_id = ? ";
		PreparedStatement pstmt = null;
		int rownum = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, brandId);
			pstmt.setString(2, uId);
			rownum = pstmt.executeUpdate();
					
			if (rownum == 0) {
				System.out.println("> LikeDAOImpl_deleteBlike() delete fail");
				return 0;
			}
			
		} 
		 catch (Exception e) {
			e.printStackTrace();
			System.out.println("> LikeDAOImpl_deleteBlike() Exception");
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(conn);
		}
		return rownum;
	}

	@Override
	public int deleteBlikeAll(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " DELETE FROM b_like "
				+ "  WHERE user_id = ? ";
		PreparedStatement pstmt = null;
		int rownum = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			rownum = pstmt.executeUpdate();
					
			if (rownum == 0) {
				System.out.println("> LikeDAOImpl_deleteBlike() delete fail");
				return 0;
			}
			
		} 
		 catch (Exception e) {
			e.printStackTrace();
			System.out.println("> LikeDAOImpl_deleteBlike() Exception");
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(conn);
		}
		return rownum;
	}



}
