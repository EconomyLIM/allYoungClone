package productDetail.persistence;

import java.sql.Connection;

public interface DBLDAO {

	// 1.좋아요 버튼을 누르면 데이터에 추가하는 작업
	public boolean addLike(Connection conn, String userId, String brandId) throws Exception;
	
	// 2. 좋아요 버튼을 한번 더 누르면 데이터에 삭제하는 작업
	public boolean removeLike(Connection conn, String userId, String brandId) throws Exception;
	
	// 3. 좋아요 상태 확인
	public boolean isLiked(Connection conn, String userId, String brandId) throws Exception;
	
} // interface
