package review.persistence;

import java.sql.Connection;
import java.util.List;

import review.domain.ReviewDTO;
import review.domain.ReviewImgDTO;
import review.domain.ReviewScoreDTO;

public interface ReviewDAO {

	List<ReviewDTO> reviewList(Connection conn, String pro_displ_id, String type );
	
	List<ReviewImgDTO> reviewimg(Connection conn, String rev_id);
	
	ReviewScoreDTO reviewScore(Connection conn, String pro_displ_id);
}
