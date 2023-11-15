package review.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import review.domain.ReviewDTO;
import review.domain.ReviewImgDTO;
import review.domain.ReviewScoreDTO;

public interface ReviewDAO {

	List<ReviewDTO> reviewList(Connection conn, String pro_displ_id, String type, String pro_id, int currentPage, int numberPerPage);
	
	ReviewDTO review(Connection conn, String rev_id);
	
	List<ReviewDTO> reviewList(Connection conn, String pro_displ_id, String pro_id);
	
	List<ReviewImgDTO> reviewimg(Connection conn, String rev_id);
	
	ReviewScoreDTO reviewScore(Connection conn, String pro_displ_id, String pro_id);
	
	// 전체 페이지 구하기
	int getTotalReviewPages(Connection conn, String pro_displ_id,String proid, int numberPerPage)  throws SQLException;
	// 
	int getTotalReviewRecords(Connection conn, String pro_displ_id, String proid)  throws SQLException;
}
