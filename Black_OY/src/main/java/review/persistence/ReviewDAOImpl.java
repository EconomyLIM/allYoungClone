package review.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

import review.domain.ReviewDTO;
import review.domain.ReviewImgDTO;
import review.domain.ReviewScoreDTO;
import review.domain.SkintbDTO;
import review.persistence.ReviewDAO;

public class ReviewDAOImpl implements ReviewDAO {

	private ReviewDAOImpl() {};
	private static ReviewDAOImpl instance = new ReviewDAOImpl();
	public static ReviewDAOImpl getInstance() {
		return instance;
	}
	
	@Override
	public List<ReviewDTO> reviewList(Connection conn, String pro_displ_id, String type, String proid, int currentPage, int numberPerPage) {
		ArrayList<ReviewDTO> reviewlist = null;
		ReviewDTO reviewDTO = null;
		
		int begin = (currentPage -1) * numberPerPage + 1;
		int end = begin + numberPerPage -1 ;
		
		String sql = " SELECT * From ( select ROWNUM no, t.* from ( select * from review r join user_profile up on r.user_id = up.user_id join PF_SKINTONE ps on up.skintone_id = ps.skintone_id join PF_SKINTYPE pf on up.skintype_id = pf.skintype_id ";
		//String sql = " select rev_id, user_id, pro_displ_id, rev_like, rev_content, rev_grade, rev_reg, rev_grade_1, rev_grade_2,rev_grade_3, pro_id "
			//	+ " from review  ";
				
				if (!(proid.equals("ALL"))) {
					sql+= " where pro_displ_id = ? AND pro_id = ?  ";
				}else {
					sql += " where pro_displ_id = ? ";
				}
		
				if (type.equals("02")) {
					sql += " order by rev_reg DESC ";
				}else {
					sql += " order by rev_like DESC ";
				}
				
				sql += " )t )b where b.no  BETWEEN ? AND ? ";
		
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
		String user_img;
		String skintone_title;
		String skintype_title;
		
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		
		//int temp =2;
		System.out.println(sql);
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, pro_displ_id);
			psmt.setInt(2, begin);
			psmt.setInt(3, end);
			
			if (!(proid.equals("ALL"))) {
				psmt.setString(2, proid);
				psmt.setInt(3, begin);
				psmt.setInt(4, end);
			}
			
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
					 user_img = rs.getString("user_img");
					 skintone_title = rs.getString("skintone_title");
					 skintype_title = rs.getString("skintype_title");
					 reviewDTO = new ReviewDTO(rev_id, user_id, pro_displ_id, rev_like, rev_content, rev_grade, rev_reg, rev_grade_1, rev_grade_2, rev_grade_3, pro_id, user_img, skintone_title, skintype_title);
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
	
	// 리뷰 이미지 모아보기용
	@Override
	public List<ReviewDTO> reviewList(Connection conn, String pro_displ_id, String proid) {
		ArrayList<ReviewDTO> reviewlist = null;
		ReviewDTO reviewDTO = null;

		String sql = " select * "
				+ " from review r join user_profile up on r.user_id = up.user_id join PF_SKINTONE ps on up.skintone_id = ps.skintone_id join PF_SKINTYPE pf on up.skintype_id = pf.skintype_id  ";
				
				if (!(proid.equals("ALL"))) {
					sql+= " where pro_displ_id = ? AND pro_id = ?  ";
				}else {
					sql += " where pro_displ_id = ? ";
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
		String user_img;
		String skintone_title;
		String skintype_title;
		
		
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		
		
		System.out.println(sql);
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, pro_displ_id);
			
			if (!(proid.equals("ALL"))) {
				psmt.setString(2, proid);
			}
			
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
					 user_img = rs.getString("user_img");
					 skintone_title = rs.getString("skintone_title");
					 skintype_title = rs.getString("skintype_title");
					 
					 
					 reviewDTO = new ReviewDTO(rev_id, user_id, pro_displ_id, rev_like, rev_content, rev_grade, rev_reg, rev_grade_1, rev_grade_2, rev_grade_3, pro_id, user_img, skintone_title, skintype_title);
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
	public ReviewScoreDTO reviewScore(Connection conn, String pro_displ_id, String pro_id) {
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
				+ "  FROM review ";                 
		
		if (!(pro_id.equals("ALL"))) {
			sql+= " where pro_displ_id = ? AND pro_id = ?  ";
		}else {
			sql += " where pro_displ_id = ? ";
		}
		
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
				
				if (!(pro_id.equals("ALL"))) {
					psmt.setString(2, pro_id);
				}
				
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

	@Override
	public int getTotalReviewPages(Connection conn, String pro_displ_id, String proid, int numberPerPage)
			throws SQLException {
		int totalPages = 0;

		String sql = " SELECT CEIL( COUNT(*)/ ? ) "
				+ " FROM review ";
				
		if (!(proid.equals("ALL"))) {
			sql+= " where pro_displ_id = ? AND pro_id = ?  ";
		}else {
			sql += " where pro_displ_id = ? ";
		}
		

		PreparedStatement pstmt = null;
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, numberPerPage);		
		pstmt.setString(2, pro_displ_id);
		if (!(proid.equals("ALL"))) {
			pstmt.setString(3, proid);		
		}
		
			
		
		ResultSet rs =  pstmt.executeQuery();

		if( rs.next() )  totalPages = rs.getInt(1);

		JDBCUtil.close(pstmt);
		JDBCUtil.close(rs);
		JDBCUtil.close(conn);

		return totalPages;
	} // getTotalPages

	@Override
	public int getTotalReviewRecords(Connection conn, String pro_displ_id, String proid) throws SQLException {
		// TODO Auto-generated method stub
		int totalRecords = 0;
		
		String sql = " SELECT COUNT(*) "
				+ " FROM review ";

		if (!(proid.equals("ALL"))) {
			sql+= " where pro_displ_id = ? AND pro_id = ?  ";
		}else {
			sql += " where pro_displ_id = ? ";
		}

		PreparedStatement pstmt = null;
		pstmt = conn.prepareStatement(sql);		
		pstmt.setString(1, pro_displ_id);		
		
		if (!(proid.equals("ALL"))) {
			pstmt.setString(2, proid);		
		}
		
		ResultSet rs =  pstmt.executeQuery();

		if( rs.next() )  totalRecords = rs.getInt(1);

		JDBCUtil.close(pstmt);
		JDBCUtil.close(rs);
		JDBCUtil.close(conn);
		
		return totalRecords;
	}

	@Override
	public ReviewDTO review(Connection conn, String rev_id) {
		ReviewDTO reviewDTO = null;
		String sql = " select * from review r join user_profile up on r.user_id = up.user_id join PF_SKINTONE ps on up.skintone_id = ps.skintone_id join PF_SKINTYPE pf on up.skintype_id = pf.skintype_id where rev_id = ? ";
		//String rev_id;
		String user_id;
		String pro_displ_id; 
		int rev_like;
		String rev_content;
		int rev_grade;
		Date rev_reg;
		int rev_grade_1;
		int rev_grade_2;
		int rev_grade_3;
		String pro_id;
		String user_img;
		String skintone_title;
		String skintype_title;
		
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		
		
		System.out.println(sql);
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, rev_id);
			
			rs = psmt.executeQuery();
			if (rs.next()) {
				
				
					 rev_id = rs.getString("rev_id");
					 user_id = rs.getString("user_id");
					  pro_displ_id = rs.getString("pro_displ_id");
					rev_like = rs.getInt("rev_like");
					 rev_content = rs.getString("rev_content");
					 rev_grade = rs.getInt("rev_grade");
					 rev_reg = rs.getDate("rev_reg");
					 rev_grade_1 = rs.getInt("rev_grade_1");
					 rev_grade_2 = rs.getInt("rev_grade_2");
					 rev_grade_3 = rs.getInt("rev_grade_3");
					 pro_id = rs.getString("pro_id");
					 user_img = rs.getString("user_img");
					 skintone_title = rs.getString("skintone_title");
					 skintype_title = rs.getString("skintype_title");
					 
					 
					 reviewDTO = new ReviewDTO(rev_id, user_id, pro_displ_id, rev_like, rev_content, rev_grade, rev_reg, rev_grade_1, rev_grade_2, rev_grade_3, pro_id, user_img, skintone_title, skintype_title);
					
					
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("reviewdaoimpl sql 오류");
		}finally {
			JDBCUtil.close(psmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		return reviewDTO;
	}

	@Override
	public List<SkintbDTO> skintr(Connection conn, String user_id) {
		// TODO Auto-generated method stub
		ArrayList<SkintbDTO> Skintb = null;
		SkintbDTO skintbDTO = null;
		
		String sql = " select * from upf_skintrouble us join pf_skintrouble pt on us.skintrb_id = pt.skintrb_id where us.user_id = ? ";
		
		String skintrb_title;
		
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, user_id);
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				Skintb = new ArrayList<SkintbDTO>();
				do {
					
					user_id = rs.getString("user_id");
					skintrb_title = rs.getString("skintrb_title");
					
					skintbDTO = new SkintbDTO(user_id, skintrb_title);
					Skintb.add(skintbDTO);
					
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
		
		return Skintb;
	}
	

}
