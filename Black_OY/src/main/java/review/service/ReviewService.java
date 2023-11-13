package review.service; 

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;


import review.domain.ReviewDTO;
import review.domain.ReviewImgDTO;
import review.domain.ReviewScoreDTO;
import review.persistence.ReviewDAOImpl;

public class ReviewService {
	
	private ReviewService() {}
	private static ReviewService instance = null;
	
	public static ReviewService getInstance() {
		if (instance == null) {
			instance = new ReviewService();
		}
		return instance;
	}
	
	
	public List<ReviewDTO> reviewListService(String pro_displ_id, String type){
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			ReviewDAOImpl reviewDAOImpl = ReviewDAOImpl.getInstance();
			List<ReviewDTO> reviewlist = reviewDAOImpl.reviewList(conn, pro_displ_id, type);
			return reviewlist;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리뷰리스트 오류");
		}finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		return null;
	}
	
	
	public List<ReviewImgDTO> reviewimgService(String rev_id){
		Connection conn = null;
		try {
			
			conn = ConnectionProvider.getConnection();
			ReviewDAOImpl reviewDAOImpl = ReviewDAOImpl.getInstance();
			List<ReviewImgDTO> reviewimg = reviewDAOImpl.reviewimg(conn, rev_id);
			
			return reviewimg;
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리뷰이미지 오류");
		}finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		
		return null;
	}
	
	public ReviewScoreDTO reviewScoreService(String pro_displ_id) {
		Connection conn = null;
		try {
			
			conn = ConnectionProvider.getConnection();
			ReviewDAOImpl reviewDAOImpl = ReviewDAOImpl.getInstance();
			ReviewScoreDTO reviewScoreDTO = reviewDAOImpl.reviewScore(conn, pro_displ_id);
			
			return reviewScoreDTO;
			
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		
		return null;
	}

}
