package mypage.persistence;

import java.sql.Connection;
import java.util.List;

import mypage.domain.MpPAskDTO;
import mypage.domain.MpPlikeDTO;
import mypage.domain.MpQnADTO;
import mypage.domain.MpUserInfoDTO;

public class MyPageDAOImpl implements MypageDAO {

	@Override
	public List<MpUserInfoDTO> selectUserInfo(Connection conn, String Uid) throws Exception {
		// TODO Auto-generated method stub
		
		
		return null;
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
