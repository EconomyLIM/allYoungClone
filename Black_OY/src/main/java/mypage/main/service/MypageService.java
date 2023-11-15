package mypage.main.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import mypage.main.domain.MpOrderStateDTO;
import mypage.main.domain.MpPAskDTO;
import mypage.main.domain.MpPlikeDTO;
import mypage.main.domain.MpQnADTO;
import mypage.main.domain.MpUserInfoDTO;
import mypage.main.persistence.MyPageDAOImpl;



public class MypageService {
	
	private static MypageService instance = null;
	private MypageService() {}
	public static MypageService getinstance() {
		if (instance == null) {
			instance = new MypageService();
		}
		return instance;
	}//get instance
	//	1. 회원 정보 가져오는 서비스
	public List<MpUserInfoDTO> mpUIservice(String Uid) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MyPageDAOImpl daoImpl = MyPageDAOImpl.getinstance();
			List<MpUserInfoDTO> list = null;
			list = daoImpl.selectUserInfo(conn, Uid);
			return list;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> MypageService.mpUPLservice_Exception");
		}finally {
			JDBCUtil.close(conn);
		}
		return null;
	}
	
	//	2. 잔여포인트 가져오는 서비스
	public int mpUPservice(String Uid) {
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			MyPageDAOImpl daoImpl = MyPageDAOImpl.getinstance();
			int userPoint = 0;
			userPoint = daoImpl.selectUserPoint(conn, Uid);
			return userPoint;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> MypageService.mpUPservice_Exception");
		} finally {
			JDBCUtil.close(conn);
		}
		return 0;
	}
	
	//	3. 쿠폰갯수 가져오기 서비스
	public int mpUCservice(String Uid) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MyPageDAOImpl daoImpl = MyPageDAOImpl.getinstance();
			int userCoupon = 0;
			userCoupon = daoImpl.selectUserCoupon(conn, Uid);
			return userCoupon;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> MypageService.mpUCservice_Exception");
		}finally {
			JDBCUtil.close(conn);
		}
		return 0;
	}
	
	//	4. 잔여 예치금 가져오기 서비스
	public int mpUDservice(String Uid) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MyPageDAOImpl daoImpl = MyPageDAOImpl.getinstance();
			int userDeposit = 0;
			userDeposit = daoImpl.selectUserDeposit(conn, Uid);
			return userDeposit;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> MypageService.mpUDservice_Exception");
		}finally {
			JDBCUtil.close(conn);
		}
		return 0;
	}
	
	//	5. 좋아요한 상품내역 가져오기 서비스
	public List<MpPlikeDTO> mpUPLservice(String Uid) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MyPageDAOImpl daoImpl = MyPageDAOImpl.getinstance();
			List<MpPlikeDTO> list = null;
			list = daoImpl.selectUserPlike(conn, Uid);
			return list;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> MypageService.mpUPLservice_Exception");
		}finally {
			JDBCUtil.close(conn);
		}
		return null;
	}
	
	//	6. 1:1문의내역 가져오기 서비스
	public List<MpPAskDTO> mpUPAservice(String Uid) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MyPageDAOImpl daoImpl = MyPageDAOImpl.getinstance();
			List<MpPAskDTO> list = null;
			list = daoImpl.selectUserPAsk(conn, Uid);
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> MypageService.mpUPAservice_Exception");
		}finally {
			JDBCUtil.close(conn);
		}
		return null;
	}
	
	
	//	7.	QnA내역 가져오기 서비스
	public List<MpQnADTO> mpUQnAservice(String Uid) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MyPageDAOImpl daoImpl = MyPageDAOImpl.getinstance();
			List<MpQnADTO> list = null;
			list = daoImpl.selectUserQnA(conn, Uid);
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> MypageService.mpUQnAservice_Exception");
		}finally {
			JDBCUtil.close(conn);
		}
		return null;
	}
	
	//	8.	리뷰갯수 가져오기 서비스
	public int mpURservice(String Uid) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MyPageDAOImpl daoImpl = MyPageDAOImpl.getinstance();
			int userRevCount = 0;
			userRevCount = daoImpl.selectUserRevCount(conn, Uid);
			return userRevCount;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> MypageService.mpURservice_Exception");
		}finally {
			JDBCUtil.close(conn);
		}
		return 0;
	}
	
	//	9.	주문현황 가져오기 서비스
	public List<MpOrderStateDTO> mpUOservice(String Uid){
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			MyPageDAOImpl daoImpl = MyPageDAOImpl.getinstance();
			List<MpOrderStateDTO> list = null;
			list = daoImpl.selectUserOrderStatus(conn, Uid);
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> MypageService.mpUOservice_Exception");
		}finally {
			JDBCUtil.close(conn);
		}
		return null;
	}
	
}
