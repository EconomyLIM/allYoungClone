package mypage.main.persistence;

import java.sql.Connection;
import java.util.List;

import mypage.main.domain.MpOrderStateDTO;
import mypage.main.domain.MpPAskDTO;
import mypage.main.domain.MpPlikeDTO;
import mypage.main.domain.MpQnADTO;
import mypage.main.domain.MpUserInfoDTO;




public interface MypageDAO {
	
	//매개변수로 회원id, 마이페이지메인에 필요한 정보들 불러오기
	//1. 회원정보 가져오기
	List<MpUserInfoDTO> selectUserInfo(Connection conn, String Uid) throws Exception;

	//2. cj포인트 잔액 가져오기
	int selectUserPoint(Connection conn, String Uid) throws Exception;
	
	//3. 보유쿠폰 갯수 가져오기
	int selectUserCoupon(Connection conn, String Uid) throws Exception;
	
	//4. 예치금 잔액 가져오기
	int selectUserDeposit(Connection conn, String Uid) throws Exception;
	
	//5. 회원이 좋아요한 상품 요약 목록 가져오기
	List<MpPlikeDTO> selectUserPlike(Connection conn, String Uid) throws Exception;
	
	//6. 회원의 1:1문의하기 내역
	List<MpPAskDTO> selectUserPAsk(Connection conn, String Uid) throws Exception;
	
	//7. 회원의 상품QnA 내역
	List<MpQnADTO> selectUserQnA(Connection conn, String Uid) throws Exception;
	
	//8. 회원의 리뷰 갯수
	int selectUserRevCount(Connection conn, String Uid) throws Exception;
	
	//9. 회원의 배송상태 조회
	List<MpOrderStateDTO> selectUserOrderStatus(Connection conn, String Uid) throws Exception;
}
