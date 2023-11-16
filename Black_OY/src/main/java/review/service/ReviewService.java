package review.service; 

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import product.persistence.PMidListDAOImpl;
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
	
	
	public List<ReviewDTO> reviewListService(String pro_displ_id, String type, String pro_id, int currentPage, int numberPerPage){
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			ReviewDAOImpl reviewDAOImpl = ReviewDAOImpl.getInstance();
			List<ReviewDTO> reviewlist = reviewDAOImpl.reviewList(conn, pro_displ_id, type, pro_id, currentPage, numberPerPage);
			return reviewlist;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리뷰리스트 오류");
		}finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		return null;
	}
	// 리뷰 이미지 출력용
	public List<ReviewDTO> reviewListService(String pro_displ_id, String pro_id){
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			ReviewDAOImpl reviewDAOImpl = ReviewDAOImpl.getInstance();
			List<ReviewDTO> reviewlist = reviewDAOImpl.reviewList(conn, pro_displ_id, pro_id);
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
	
	public ReviewScoreDTO reviewScoreService(String pro_displ_id, String pro_id) {
		Connection conn = null;
		try {
			
			conn = ConnectionProvider.getConnection();
			ReviewDAOImpl reviewDAOImpl = ReviewDAOImpl.getInstance();
			ReviewScoreDTO reviewScoreDTO = reviewDAOImpl.reviewScore(conn, pro_displ_id, pro_id);
			
			return reviewScoreDTO;
			
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		
		return null;
	}
	// 전체 리뷰수 페이지
	public int GTRPService(String pro_displ_id,String pro_id, int numberPerPage) {
		int temp = 0;

		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			ReviewDAOImpl reviewDAOImpl = ReviewDAOImpl.getInstance();
			temp = reviewDAOImpl.getTotalReviewPages(conn, pro_displ_id, pro_id, numberPerPage);

		} catch (Exception e) {
			System.out.println("GTPSurvice Survice Exception");
			e.printStackTrace();
		} //try_catch

		return temp;
	} // GTPSurvice
	
	//전체 리뷰수
	public int GTRRService(String pro_displ_id, String pro_id) {
		int temp = 0;

		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			ReviewDAOImpl reviewDAOImpl = ReviewDAOImpl.getInstance();
			temp = reviewDAOImpl.getTotalReviewRecords(conn, pro_displ_id, pro_id);

		} catch (Exception e) {
			System.out.println("GTPSurvice Survice Exception");
			e.printStackTrace();
		} //try_catch

		return temp;
	} // GTPSurvice
	
	public ReviewDTO reviewService(String rev_id) {
		ReviewDTO reviewDTO = null;
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			ReviewDAOImpl reviewDAOImpl = ReviewDAOImpl.getInstance();
			reviewDTO = reviewDAOImpl.review(conn, rev_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return reviewDTO;
		
	}

}
