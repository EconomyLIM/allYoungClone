package mypage.like.persistence;

import java.sql.Connection;
import java.util.List;

import mypage.like.domain.BLikeDTO;
import mypage.main.domain.MpPlikeDTO;

public interface LikeDAO {
	
	//1. 좋아요한 상품 목록 가져오기
	List<MpPlikeDTO> selectPlike(Connection conn, String uId) throws Exception;
	
	//2. 좋아요한 상품 한개 삭제(처리여부 int값 리턴)
	int deletePlike(Connection conn, String uId, String plpdispId) throws Exception;
	
	//3. 좋아요한 상품 전체 삭제(처리여부 int값 리턴)
	int deletePlikeAll(Connection conn, String uId) throws Exception;
	
	//4. 좋아요한 브랜드 목록 가져오기
	List<BLikeDTO> selectBlike(Connection conn, String uId) throws Exception;
	
	//5. 좋아요한 브랜드 한개 삭제
	int deleteBlike(Connection conn, String uId, String brandId) throws Exception;
	
	//6. 좋아요한 브랜드 전체 삭제
	int deleteBlikeAll(Connection conn, String uId) throws Exception;
	
	
}
