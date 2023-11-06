package mypage.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

import mypage.domain.MpPAskDTO;
import mypage.domain.MpPlikeDTO;
import mypage.domain.MpQnADTO;
import mypage.domain.MpUserInfoDTO;

public class MyPageDAOImpl implements MypageDAO {
	
	private MyPageDAOImpl() {}
	private static MyPageDAOImpl instance = new MyPageDAOImpl();
	private static MyPageDAOImpl getinstance() {
		return instance;
	}
	
	
	@Override
	public List<MpUserInfoDTO> selectUserInfo(Connection conn, String Uid) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT U_NAME, GRADE_ID "
				+ " FROM O_user "
				+ " WHERE user_id = '?' ";
		
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
				dto.setUName(rs.getString("uName"));
				dto.setUGrade(rs.getString("uGrade"));
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
		
		return UserPoint;
	}

	@Override
	public int selectUserCoupon(Connection conn, String Uid) throws Exception {
		// TODO Auto-generated method stub
		int UserCouponCount = 0;
		
		return UserCouponCount;
	}

	@Override
	public int selectUserDeposit(Connection conn, String Uid) throws Exception {
		// TODO Auto-generated method stub
		int UserDeposit = 0;
		
		return UserDeposit;
	}

	@Override
	public List<MpPlikeDTO> selectUserPlike(Connection conn, String Uid) throws Exception {
		// TODO Auto-generated method stub
		
		
		return null;
	}

	@Override
	public List<MpPAskDTO> selectUserPAsk(Connection conn, String Uid) throws Exception {
		// TODO Auto-generated method stub
		
		
		return null;
	}

	@Override
	public List<MpQnADTO> selectUserQnA(Connection conn, String Uid) throws Exception {
		// TODO Auto-generated method stub
		
		
		return null;
	}

	@Override
	public int selectUserRevCount(Connection conn, String Uid) throws Exception {
		// TODO Auto-generated method stub
		int UserRevCount = 0;
		
		return UserRevCount;
	}

}
