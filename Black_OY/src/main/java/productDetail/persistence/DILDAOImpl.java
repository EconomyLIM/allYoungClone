package productDetail.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.util.JDBCUtil;

public class DILDAOImpl implements DBLDAO{

	// 싱글톤
	private DILDAOImpl() {}
	private static DILDAOImpl instance = new DILDAOImpl();
	public static DILDAOImpl getInstance() {
		return instance;
	} // getInstance
	
	// ============================== 좋아요 추가 하는 작업 ===================================
	@Override
	public boolean addLike(Connection conn, String userId, String proid) throws Exception {
		String sql = " INSERT INTO p_like VALUES (p_like_seq.NEXTVAL, ?, ? ) ";
		PreparedStatement pstmt = null;
		int rowCnt = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, proid);
			
			rowCnt = pstmt.executeUpdate();
			
			return rowCnt > 0;
			
		} catch (SQLException e) {
			System.out.println("> DILDAOImpl addLike SQLException");
			e.printStackTrace();

		} catch (Exception e) {
			System.out.println("> DILDAOImpl addLike Exception");
			e.printStackTrace();

		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(conn);
		}// try_catch
		
		return false;
	} // addLike
	
	// ============================== 좋아요 제거 하는 작업 ===================================
	@Override
	public boolean removeLike(Connection conn, String userId, String proid) throws Exception {
		
		String sql = " DELETE FROM p_like WHERE user_id = ? AND pro_displ_id = ? ";
		PreparedStatement pstmt = null;
		
		int rowCnt = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, proid);
			
			rowCnt = pstmt.executeUpdate();
			
			return rowCnt > 0;
			
		} catch (SQLException e) {
			System.out.println("> DILDAOImpl removeLike SQLException");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("> DILDAOImpl removeLike Exception");
			e.printStackTrace();

		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(conn);
		}// try_catch
		
		return false;
	} // removeLike

	// ============================== 좋아요 불러오는 작업 ===================================
	@Override
	public boolean isLiked(Connection conn,String userId, String proid) throws Exception {

		String sql = "SELECT COUNT(*) FROM P_LIKE WHERE user_id = ? AND pro_displ_id = ? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int rowCnt; 
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, proid);
			rs = pstmt.executeQuery();
			
			System.out.println(">> DILDAOImpl isLiked ");
			if (rs.next()) {
				rowCnt = rs.getInt(1);
				System.out.println(">> DILDAOImpl isLiked return true ");
				return rowCnt > 0;
			} // if
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("> DILDAOImpl isLiked SQLException");
		} catch (Exception e) {
			System.out.println("> DILDAOImpl isLiked Exception");
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}// try_catch
		
		return false;
	} // isLiked

} // class
