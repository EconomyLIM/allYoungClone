package mypage.main.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

import mypage.main.domain.MpOrderStateDTO;
import mypage.main.domain.MpPAskDTO;
import mypage.main.domain.MpPlikeDTO;
import mypage.main.domain.MpQnADTO;
import mypage.main.domain.MpUserInfoDTO;


public class MyPageDAOImpl implements MypageDAO {
	
	private MyPageDAOImpl() {}
	private static MyPageDAOImpl instance = new MyPageDAOImpl();
	public static MyPageDAOImpl getinstance() {
		return instance;
	}
	
	
	@Override
	public List<MpUserInfoDTO> selectUserInfo(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT gr_name, u_name, user_id  "
				+ " FROM O_user u left join olive_members m on u.grade_id = m.grade_id "
				+ " WHERE user_id = ? ";
		ArrayList<MpUserInfoDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, uId);
		rs = pstmt.executeQuery();
		MpUserInfoDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<MpUserInfoDTO>();
			
			do {
				dto = new MpUserInfoDTO();
				dto.setUId(rs.getString("user_id"));
				dto.setUgrade(rs.getString("gr_name"));
				dto.setUname(rs.getString("u_name"));
				list.add(dto);
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		} catch (Exception e) {
			System.out.println("> MyPageDAOImpl_selectUserInfo() Exception");
		}
		return list;
	}



	@Override
	public int selectUserPoint(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		int UserPoint = 0;
		String sql = " SELECT U_POINT "
				+ " FROM O_user "
				+ " WHERE user_id = ? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				UserPoint = rs.getInt("U_POINT");
			} 
		
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}

		return UserPoint;
	}

	@Override
	public int selectUserCoupon(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		int UserCouponCount = 0;
		
		String sql = " SELECT COUNT(*) c "
				+ " FROM USER_COUPON "
				+ " WHERE USER_ID = ? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				UserCouponCount = rs.getInt("c");
			} 
		
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		return UserCouponCount;
	}

	@Override
	public int selectUserDeposit(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		int UserDeposit = 0;
		
		String sql = " SELECT t_des "
				+ " FROM u_deposit "
				+ " WHERE USER_ID = ? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				UserDeposit = rs.getInt("t_des");
			} 
		
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}		
		return UserDeposit;
	}

	@Override
	public List<MpPlikeDTO> selectUserPlike(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT ROWNUM "
				+ " ,pdi.pro_displ_src src , b.brand_name bname"
				+ "  , cs.cat_s_id csid "
				+ "  , cm.cat_m_id cmid "
				+ " , pd.pro_displ_name displname "
				+ " ,a.pro_price pricep "
				+ " , "
				+ " NVL(CASE  "
				+ "         WHEN prc.promo_c_kind = 1 THEN a.pro_price + prc.promo_c_discount "
				+ "         WHEN prc.promo_c_kind = 2 THEN a.pro_price * (1-prc.promo_c_discount) "
				+ "         ELSE a.pro_price "
				+ "         END  "
				+ " , 0) "
				+ " + "
				+ " NVL(prd.promo_d_discount,0) as afterprice "
				+ " , pd.pro_displ_id displid, p.pro_id pid "
				+ " ,CASE  "
				+ "         WHEN prc.promo_c_s <= SYSDATE AND prc.promo_c_e >= SYSDATE THEN '1' "
				+ "         ELSE '0' "
				+ "     END AS pmc "
				+ " ,CASE  "
				+ "         WHEN prd.promo_d_s <= SYSDATE AND prd.promo_d_e >= SYSDATE THEN '1' "
				+ "         ELSE '0' "
				+ "     END AS pmd "
				+ " ,CASE  "
				+ "         WHEN prp.promo_p_s <= SYSDATE AND prp.promo_p_e >= SYSDATE THEN '1' "
				+ "         ELSE '0' "
				+ "     END AS pmp "
				+ " ,CASE  "
				+ "         WHEN ss.store_id IS NOT NULL THEN '1' "
				+ "         ELSE '0' "
				+ "     END AS stock "
				+ " FROM  "
				+ " product_display pd "
				+ " JOIN p_like pl ON pd.pro_displ_id = pl.pro_displ_id "
				+ " JOIN brand b ON pd.brand_id = b.brand_id "
				+ " JOIN product p ON p.pro_displ_id = pd.pro_displ_id "
				+ " JOIN pro_displ_img pdi ON pdi.pro_displ_id = pd.pro_displ_id "
				+ " JOIN pro_prom pm ON pd.pro_displ_id = pm.pro_displ_id "
				+ " LEFT JOIN prom_c prc ON pm.prom_c_id = prc.prom_c_id "
				+ " LEFT JOIN prom_d prd ON prd.prom_d_id = pm.prom_d_id "
				+ " LEFT JOIN prom_p prp ON prp.prom_p_id = pm.prom_p_id "
				+ " LEFT JOIN store_stock ss ON p.pro_id = ss.pro_id "
				+ " LEFT JOIN cate_s cs on p.cat_s_id = cs.cat_s_id "
				+ " LEFT JOIN cate_m cm on cs.cat_m_id = cm.cat_m_id "
				+ "  JOIN ( "
				+ "     SELECT pro_displ_id, pro_price,  "
				+ "         RANK() OVER (PARTITION BY pro_displ_id ORDER BY pro_price DESC) as price_rank "
				+ "     FROM product "
				+ " ) a ON a.pro_displ_id = pd.pro_displ_id AND a.price_rank = 1 "
				+ " where user_id= ?   AND ROWNUM <= 4 " ; 
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
				dto.setRowNum(rs.getInt("ROWNUM"));
				dto.setPlImgsrc(rs.getString("src"));
				dto.setPlcsid(rs.getString("csid"));
				dto.setPlcmid(rs.getString("cmid"));
				dto.setPlbrand(rs.getString("bname"));
				dto.setPlpdispN(rs.getString("displname"));
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
			System.out.println("> MyPageDAOImpl_selectUserPlike() Exception");
		}
		
		return list;
	}

	@Override
	public List<MpPAskDTO> selectUserPAsk(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT pask_state, pask_content, pask_date, ac_major, ac_minor, pask_ans "
				+ " FROM personal_ask a left join ask_category c on a.ac_id=c.ac_id "
				+ " WHERE user_id = ? ";
		
		ArrayList<MpPAskDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, uId);
		rs = pstmt.executeQuery();
		MpPAskDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<MpPAskDTO>();
			
			do {
				dto = new MpPAskDTO();
				dto.setPaskState(rs.getString("pask_state"));
				dto.setPaskQuestion(rs.getString("pask_content"));
				dto.setPaskDate(rs.getDate("pask_date"));
				dto.setPaskMa(rs.getString("ac_major"));
				dto.setPaskMi(rs.getString("ac_minor"));
				dto.setPaskAns(rs.getString("pask_ans"));
				list.add(dto);			
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		} catch (Exception e) {
			System.out.println("> MyPageDAOImpl_selectUserPAsk() Exception");
		}
		return list;
		
	}

	@Override
	public List<MpQnADTO> selectUserQnA(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT p.pro_displ_name dn , b.brand_name bn, i.pro_displ_src img, qa_que, qa_date, qa_state, qa_ans "
				+ " FROM qanda q left join product_display p on q.pro_displ_id = p.pro_displ_id "
				+ "            left join brand b on p.brand_id = b.brand_id "
				+ "            left join pro_displ_img i on p.pro_displ_id = i.pro_displ_id "
				+ " WHERE user_id = ? "
				+ "    and rownum = 1 ";
		ArrayList<MpQnADTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, uId);
		rs = pstmt.executeQuery();
		MpQnADTO dto = null;
		if (rs.next()) {
			list = new ArrayList<MpQnADTO>();
			
			do {
				dto = new MpQnADTO();
				dto.setQnaQus(rs.getString("qa_que"));
				dto.setQnaAns(rs.getString("qa_ans"));
				dto.setQnaDate(rs.getDate("qa_date"));
				dto.setQnaState(rs.getString("qa_state"));
				dto.setQnaDisplN(rs.getString("dn"));
				dto.setQnaBrand(rs.getString("bn"));
				dto.setQnaImg(rs.getString("img"));
				list.add(dto);
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		} catch (Exception e) {
			System.out.println("> MyPageDAOImpl_selectUserQnA() Exception");
		}
		return list;
	}

	@Override
	public int selectUserRevCount(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		int UserRevCount = 0;
		String sql = " SELECT count(*) c "
				+ " FROM review "
				+ " WHERE user_id = ? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				UserRevCount = rs.getInt("c");
			} 
		
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}		
		return UserRevCount;
	}


	@Override
	public List<MpOrderStateDTO> selectUserOrderStatus(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT COUNT(CASE WHEN order_status='주문접수' THEN 1 END) AS uorderState1 , "
				+ "        COUNT(CASE WHEN order_status='결제완료' THEN 1 END) AS uorderState2 , "
				+ "        COUNT(CASE WHEN order_status='배송준비중' THEN 1 END) AS uorderState3 , "
				+ "        COUNT(CASE WHEN order_status='배송중' THEN 1 END) AS uorderState4 , "
				+ "        COUNT(CASE WHEN order_status='배송완료' THEN 1 END) AS uorderState5  "
				+ " FROM o_user u LEFT JOIN o_order o ON u.user_id = o.user_id "
				+ " WHERE u.user_id = ? AND "
				+ "    order_date BETWEEN SYSDATE - (INTERVAL '1' MONTH) AND SYSDATE ";	//최근1개월
		ArrayList<MpOrderStateDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			rs = pstmt.executeQuery();
			MpOrderStateDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<MpOrderStateDTO>();
			
			do {
				dto = new MpOrderStateDTO();
				dto.setUorderState1(rs.getInt("uorderState1"));
				dto.setUorderState2(rs.getInt("uorderState2"));
				dto.setUorderState3(rs.getInt("uorderState3"));
				dto.setUorderState4(rs.getInt("uorderState4"));
				dto.setUorderState5(rs.getInt("uorderState5"));
				list.add(dto);
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		} catch (Exception e) {
			System.out.println("> MyPageDAOImpl_selectUserOrderStatus() Exception");
		}
		return list;
	}





	
}
