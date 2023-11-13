package review.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

import review.domain.ReviewDTO;
import review.domain.ReviewImgDTO;
import review.domain.ReviewScoreDTO;
import review.persistence.ReviewDAO;

public class ReviewDAOImpl implements ReviewDAO {

	private ReviewDAOImpl() {};
	private static ReviewDAOImpl instance = new ReviewDAOImpl();
	public static ReviewDAOImpl getInstance() {
		return instance;
	}
	
	@Override
	public List<ReviewDTO> reviewList(Connection conn, String pro_displ_id, String type) {
		ArrayList<ReviewDTO> reviewlist = null;
		ReviewDTO reviewDTO = null;
		
		String sql = " select rev_id, user_id, pro_displ_id, rev_like, rev_content, rev_grade, rev_reg, rev_grade_1, rev_grade_2,rev_grade_3, pro_id "
				+ " from review where pro_displ_id = ? ";
		
				if (type.equals("02")) {
					sql += " order by rev_reg DESC ";
				}else {
					sql += " order by rev_like DESC ";
				}
				
		
		String rev_id;
		String user_id;
		//String pro_displ_id; 
		int rev_like;
		String rev_content;
		int rev_grade;
		Date rev_reg;
		int rev_grade_1;
		int rev_grade_2;
		int rev_grade_3;
		String pro_id;
		
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, pro_displ_id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				reviewlist = new ArrayList<ReviewDTO>();
				do {
					 rev_id = rs.getString("rev_id");
					 user_id = rs.getString("user_id");
					//String pro_displ_id; 
					rev_like = rs.getInt("rev_like");
					 rev_content = rs.getString("rev_content");
					 rev_grade = rs.getInt("rev_grade");
					 rev_reg = rs.getDate("rev_reg");
					 rev_grade_1 = rs.getInt("rev_grade_1");
					 rev_grade_2 = rs.getInt("rev_grade_2");
					 rev_grade_3 = rs.getInt("rev_grade_3");
					 pro_id = rs.getString("pro_id");
					 
					 reviewDTO = new ReviewDTO(rev_id, user_id, pro_displ_id, rev_like, rev_content, rev_grade, rev_reg, rev_grade_1, rev_grade_2, rev_grade_3, pro_id);
					 reviewlist.add(reviewDTO);
					
				} while (rs.next());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("reviewdaoimpl sql 오류");
		}finally {
			JDBCUtil.close(psmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		return reviewlist;
	}
	
	
	@Override
	public List<ReviewImgDTO> reviewimg(Connection conn, String rev_id) {
		// TODO Auto-generated method stub
		ArrayList<ReviewImgDTO> reviewimg = null;
		ReviewImgDTO reviewimgDTO = null;
		
		String sql = " select rev_img_id, rev_id, rev_img_src from review_img where rev_id = ? ";
		
		String rev_img_id;
		//String rev_id;
		String rev_img_src;
		
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, rev_id);
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				reviewimg = new ArrayList<ReviewImgDTO>();
				do {
					
					rev_img_id = rs.getString("rev_img_id");
					rev_img_src = rs.getString("rev_img_src");
					
					reviewimgDTO = new ReviewImgDTO(rev_img_id, rev_id, rev_img_src);
					reviewimg.add(reviewimgDTO);
					
				} while (rs.next());
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("reviewimg sql 오류");
		}finally {
			JDBCUtil.close(psmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		return reviewimg;
	}

	@Override
	public ReviewScoreDTO reviewScore(Connection conn, String pro_displ_id) {
		// TODO Auto-generated method stub
		ReviewScoreDTO reviewScoreDTO = null;
		String sql = " SELECT "
				+ "  COALESCE(SUM(CASE WHEN rev_grade = 5 THEN 1 ELSE 0 END) / COUNT(*) * 100, 0) AS grade_5_ratio, "
				+ "  COALESCE(SUM(CASE WHEN rev_grade = 4 THEN 1 ELSE 0 END) / COUNT(*) * 100, 0) AS grade_4_ratio, "
				+ "  COALESCE(SUM(CASE WHEN rev_grade = 3 THEN 1 ELSE 0 END) / COUNT(*) * 100, 0) AS grade_3_ratio, "
				+ "  COALESCE(SUM(CASE WHEN rev_grade = 2 THEN 1 ELSE 0 END) / COUNT(*) * 100, 0) AS grade_2_ratio, "
				+ "  COALESCE(SUM(CASE WHEN rev_grade = 1 THEN 1 ELSE 0 END) / COUNT(*) * 100, 0) AS grade_1_ratio, "
				+ "  COALESCE(SUM(CASE WHEN rev_grade_1 = 3 THEN 1 ELSE 0 END) / COUNT(*) * 100, 0) AS grade1_3_ratio, "
				+ "  COALESCE(SUM(CASE WHEN rev_grade_1 = 2 THEN 1 ELSE 0 END) / COUNT(*) * 100, 0) AS grade1_2_ratio, "
				+ "  COALESCE(SUM(CASE WHEN rev_grade_1 = 1 THEN 1 ELSE 0 END) / COUNT(*) * 100, 0) AS grade1_1_ratio, "
				+ "  COALESCE(SUM(CASE WHEN rev_grade_2 = 3 THEN 1 ELSE 0 END) / COUNT(*) * 100, 0) AS grade2_3_ratio, "
				+ "  COALESCE(SUM(CASE WHEN rev_grade_2 = 2 THEN 1 ELSE 0 END) / COUNT(*) * 100, 0) AS grade2_2_ratio, "
				+ "  COALESCE(SUM(CASE WHEN rev_grade_2 = 1 THEN 1 ELSE 0 END) / COUNT(*) * 100, 0) AS grade2_1_ratio, "
				+ "  COALESCE(SUM(CASE WHEN rev_grade_3 = 3 THEN 1 ELSE 0 END) / COUNT(*) * 100, 0) AS grade3_3_ratio, "
				+ "  COALESCE(SUM(CASE WHEN rev_grade_3 = 2 THEN 1 ELSE 0 END) / COUNT(*) * 100, 0) AS grade3_2_ratio, "
				+ "  COALESCE(SUM(CASE WHEN rev_grade_3 = 1 THEN 1 ELSE 0 END) / COUNT(*) * 100, 0) AS grade3_1_ratio, "
				+ "  AVG(COALESCE(rev_grade, 0)) AS averagegrade "
				+ "  FROM review where pro_displ_id = ? ";                      
		
		 int grade_5_ratio;
		 int grade_4_ratio;
		 int grade_3_ratio;
		 int grade_2_ratio;
		 int grade_1_ratio;
		 int grade1_3_ratio;
		 int grade1_2_ratio;
		 int grade1_1_ratio;
		 int grade2_3_ratio;
		 int grade2_2_ratio;
		 int grade2_1_ratio;
		 int grade3_3_ratio;
		 int grade3_2_ratio;
		 int grade3_1_ratio;
		 int averagegrade;
		
		 PreparedStatement psmt = null;
			ResultSet rs = null;
		 
		 try {
			
			 psmt = conn.prepareStatement(sql);
				psmt.setString(1, pro_displ_id);
				rs = psmt.executeQuery();
			 if (rs.next()) {
				
			
				reviewScoreDTO = ReviewScoreDTO.builder()
						.grade_5_ratio(rs.getInt("grade_5_ratio"))
						.grade_4_ratio(rs.getInt("grade_4_ratio"))
						.grade_3_ratio(rs.getInt("grade_3_ratio"))
						.grade_2_ratio(rs.getInt("grade_2_ratio"))
						.grade_1_ratio(rs.getInt("grade_1_ratio"))
						.grade1_3_ratio(rs.getInt("grade1_3_ratio"))
						.grade1_2_ratio(rs.getInt("grade1_2_ratio"))
						.grade1_1_ratio(rs.getInt("grade1_1_ratio"))
						.grade2_3_ratio(rs.getInt("grade2_3_ratio"))
						.grade2_2_ratio(rs.getInt("grade2_2_ratio"))
						.grade2_1_ratio(rs.getInt("grade2_1_ratio"))
						.grade3_3_ratio(rs.getInt("grade3_3_ratio"))
						.grade3_2_ratio(rs.getInt("grade3_2_ratio"))
						.grade3_1_ratio(rs.getInt("grade3_1_ratio"))
						.averagegrade(rs.getFloat("averagegrade"))
						.build();
			 }
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(psmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		
		return reviewScoreDTO;
	}

}
