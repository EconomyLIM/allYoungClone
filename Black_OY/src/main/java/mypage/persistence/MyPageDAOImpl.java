package mypage.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

import mypage.domain.MpOrderDTO;
import mypage.domain.MpPAskDTO;
import mypage.domain.MpPlikeDTO;
import mypage.domain.MpQnADTO;
import mypage.domain.MpUserInfoDTO;


public class MyPageDAOImpl implements MypageDAO {
	
	private MyPageDAOImpl() {}
	private static MyPageDAOImpl instance = new MyPageDAOImpl();
	public static MyPageDAOImpl getinstance() {
		return instance;
	}
	
	
	@Override
	public List<MpUserInfoDTO> selectUserInfo(Connection conn, String Uid) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT gr_name, u_name  "
				+ " FROM O_user u left join olive_members m on u.grade_id = m.grade_id "
				+ " WHERE user_id = ? ";
		ArrayList<MpUserInfoDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, Uid);
		rs = pstmt.executeQuery();
		MpUserInfoDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<MpUserInfoDTO>();
			
			do {
				dto = new MpUserInfoDTO();
				dto.setUgrade(rs.getString("gr_name"));
				dto.setUname(rs.getString("u_name"));
				list.add(dto);
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}
		
		} catch (Exception e) {
			System.out.println("> MyPageDAOImpl_selectUserInfo() Exception");
		}
		return list;
	}



	@Override
	public int selectUserPoint(Connection conn, String Uid) throws Exception {
		// TODO Auto-generated method stub
		int UserPoint = 0;
		String sql = " SELECT U_POINT "
				+ " FROM O_user "
				+ " WHERE user_id = ? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Uid);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				UserPoint = rs.getInt("U_POINT");
			} 
		
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}

		return UserPoint;
	}

	@Override
	public int selectUserCoupon(Connection conn, String Uid) throws Exception {
		// TODO Auto-generated method stub
		int UserCouponCount = 0;
		
		String sql = " SELECT COUNT(*) c "
				+ " FROM USER_COUPON "
				+ " WHERE USER_ID = ? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Uid);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				UserCouponCount = rs.getInt("c");
			} 
		
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}
		return UserCouponCount;
	}

	@Override
	public int selectUserDeposit(Connection conn, String Uid) throws Exception {
		// TODO Auto-generated method stub
		int UserDeposit = 0;
		
		String sql = " SELECT t_des "
				+ " FROM u_deposit "
				+ " WHERE USER_ID = ? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Uid);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				UserDeposit = rs.getInt("t_des");
			} 
		
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}		
		return UserDeposit;
	}

	@Override
	public List<MpPlikeDTO> selectUserPlike(Connection conn, String Uid) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT *  "
				+ " FROM ( "
				+ "    SELECT l.pro_displ_id, pro_displ_name, pro_displ_src, prom_g_id, prom_c_id, prom_d_id, prom_p_id "
				+ "    FROM p_like l "
				+ "    LEFT JOIN pro_prom p ON l.pro_displ_id = p.pro_displ_id "
				+ "    LEFT JOIN product_display d ON l.pro_displ_id = d.pro_displ_id "
				+ "    LEFT JOIN pro_displ_img i ON l.pro_displ_id = i.pro_displ_id "
				+ "    WHERE user_id = ? "
				+ "    ORDER BY pro_displ_src  "
				+ " ) "
				+ " WHERE ROWNUM = 1  ";
		
		ArrayList<MpPlikeDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, Uid);
		rs = pstmt.executeQuery();
		MpPlikeDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<MpPlikeDTO>();
			
			do {
				dto = new MpPlikeDTO();
				dto.setPlikeDispN(rs.getString("pro_displ_name"));
				dto.setPlikeImgsrc(rs.getString("pro_displ_src"));
				dto.setPromgId(rs.getLong("prom_g_id"));
				dto.setPromcId(rs.getLong("prom_c_id"));
				dto.setPromdId(rs.getLong("prom_d_id"));
				dto.setPrompId(rs.getLong("prom_p_id"));
				list.add(dto);
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}
		
		} catch (Exception e) {
			System.out.println("> MyPageDAOImpl_selectUserPlike() Exception");
		}
		
		return list;
	}

	@Override
	public List<MpPAskDTO> selectUserPAsk(Connection conn, String Uid) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT pask_state, pask_content, pask_date "
				+ " FROM PERSONAL_ASK "
				+ " WHERE USER_ID = ? ";
		
		ArrayList<MpPAskDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, Uid);
		rs = pstmt.executeQuery();
		MpPAskDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<MpPAskDTO>();
			
			do {
				dto = new MpPAskDTO();
				dto.setPaskQuestion(rs.getString("pask_state"));
				dto.setPaskQuestion(rs.getString("pask_content"));
				dto.setPaskDate(rs.getDate("pask_date"));
				list.add(dto);			
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}
		
		} catch (Exception e) {
			System.out.println("> MyPageDAOImpl_selectUserPAsk() Exception");
		}
		return list;
		
	}

	@Override
	public List<MpQnADTO> selectUserQnA(Connection conn, String Uid) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT qa_que, qa_ans, qa_date "
				+ " FROM qanda "
				+ " WHERE user_id = ? ";
		ArrayList<MpQnADTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, Uid);
		rs = pstmt.executeQuery();
		MpQnADTO dto = null;
		if (rs.next()) {
			list = new ArrayList<MpQnADTO>();
			
			do {
				dto = new MpQnADTO();
				dto.setQnaQus(rs.getString("qa_que"));
				dto.setQnaAns(rs.getString("qa_ans"));
				dto.setQnaDate(rs.getDate("qa_date"));
				list.add(dto);
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}
		
		} catch (Exception e) {
			System.out.println("> MyPageDAOImpl_selectUserQnA() Exception");
		}
		return list;
	}

	@Override
	public int selectUserRevCount(Connection conn, String Uid) throws Exception {
		// TODO Auto-generated method stub
		int UserRevCount = 0;
		String sql = " SELECT count(*) c "
				+ " FROM review "
				+ " WHERE user_id = ? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Uid);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				UserRevCount = rs.getInt("c");
			} 
		
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}		
		return UserRevCount;
	}


	@Override
	public List<MpOrderDTO> selectUserOrderStatus(Connection conn, String Uid) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT COUNT(CASE WHEN order_status='주문접수' THEN 1 END) AS uorderState1 , "
				+ "        COUNT(CASE WHEN order_status='결제완료' THEN 1 END) AS uorderState2 , "
				+ "        COUNT(CASE WHEN order_status='배송준비중' THEN 1 END) AS uorderState3 , "
				+ "        COUNT(CASE WHEN order_status='배송중' THEN 1 END) AS uorderState4 , "
				+ "        COUNT(CASE WHEN order_status='배송완료' THEN 1 END) AS uorderState5  "
				+ " FROM o_user u LEFT JOIN o_order o ON u.user_id = o.user_id "
				+ " WHERE u.user_id = ? AND "
				+ "    order_date BETWEEN SYSDATE - (INTERVAL '1' MONTH) AND SYSDATE ";	//최근1개월
		ArrayList<MpOrderDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Uid);
			rs = pstmt.executeQuery();
			MpOrderDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<MpOrderDTO>();
			
			do {
				dto = new MpOrderDTO();
				dto.setUorderState1(rs.getInt("uorderState1"));
				dto.setUorderState2(rs.getInt("uorderState2"));
				dto.setUorderState3(rs.getInt("uorderState3"));
				dto.setUorderState4(rs.getInt("uorderState4"));
				dto.setUorderState5(rs.getInt("uorderState5"));
				list.add(dto);
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}
		
		} catch (Exception e) {
			System.out.println("> MyPageDAOImpl_selectUserOrderStatus() Exception");
		}
		return list;
	}





	
}
