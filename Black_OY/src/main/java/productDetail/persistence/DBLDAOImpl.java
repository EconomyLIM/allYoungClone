package productDetail.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JDBCUtil;

public class DBLDAOImpl implements DBLDAO{

	// 싱글톤
	private DBLDAOImpl() {}
	private static DBLDAOImpl instance = new DBLDAOImpl();
	public static DBLDAOImpl getInstance() {
		return instance;
	} // getInstance
	
	// ============================== 좋아요 추가 하는 작업 ===================================
	@Override
	public boolean addLike(Connection conn, String userId, String brandId) throws Exception {
		String sql = " INSERT INTO b_like VALUES ('brl_'||b_like_seq.NEXTVAL, ?, ? ) ";
		PreparedStatement pstmt = null;
		int rowCnt = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, brandId);
			
			rowCnt = pstmt.executeUpdate();
			
			return rowCnt > 0;
			
		} catch (SQLException e) {
			System.out.println("> DBLDAOImpl addLike SQLException");
			e.printStackTrace();

		} catch (Exception e) {
			System.out.println("> DBLDAOImpl addLike Exception");
			e.printStackTrace();

		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(conn);
		}// try_catch
		
		return false;
	} // addLike
	
	// ============================== 좋아요 제거 하는 작업 ===================================
	@Override
	public boolean removeLike(Connection conn, String userId, String brandId) throws Exception {
		
		String sql = " DELETE FROM b_like WHERE user_id = ? AND brand_id = ? ";
		PreparedStatement pstmt = null;
		
		int rowCnt = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, brandId);
			
			rowCnt = pstmt.executeUpdate();
			
			return rowCnt > 0;
			
		} catch (SQLException e) {
			System.out.println("> DBLDAOImpl removeLike SQLException");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("> DBLDAOImpl removeLike Exception");
			e.printStackTrace();

		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(conn);
		}// try_catch
		
		return false;
	} // removeLike

	// ============================== 좋아요 불러오는 작업 ===================================
	@Override
	public boolean isLiked(Connection conn,String userId, String brandId) throws Exception {

		String sql = "SELECT COUNT(*) FROM B_LIKE WHERE user_id = ? AND brand_id = ? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int rowCnt; 
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, brandId);
			rs = pstmt.executeQuery();
			
			System.out.println(">> DBLDAOImpl isLiked ");
			if (rs.next()) {
				rowCnt = rs.getInt(1);
				System.out.println(">> DBLDAOImpl isLiked return true ");
				return rowCnt > 0;
			} // if
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("> DBLDAOImpl isLiked SQLException");
		} catch (Exception e) {
			System.out.println("> DBLDAOImpl isLiked Exception");
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}// try_catch
		
		return false;
	} // isLiked

} // class
