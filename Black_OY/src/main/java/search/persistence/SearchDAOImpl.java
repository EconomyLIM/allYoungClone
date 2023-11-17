package search.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

import product.domain.PlowcateDTO;

public class SearchDAOImpl implements SearchDAO{

	private SearchDAOImpl() {}
	private static SearchDAOImpl instance = new SearchDAOImpl();
	public static SearchDAOImpl getInstance() {
		return instance;
	}
	
	@Override
	public List<String> searchWord(Connection conn, String word) {
		
		String sql = " SELECT * FROM ( "
				+ "    SELECT * FROM product_display where pro_displ_name Like ? "
				+ ") WHERE ROWNUM <= 5 ";
		ArrayList<String> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String displ = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+word+"%"); // 나중에 매개변수로 받은 후 작업
			rs = pstmt.executeQuery();

			if (rs.next()) {
				list = new ArrayList<>();
				do {

					displ = rs.getString("pro_displ_name");

					list.add(displ);

				} while ( rs.next() );

			} // if

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("> SearchDAOImpl SQLException");
		} catch (Exception e) {
			System.out.println("> SearchDAOImpl Exception");
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}// try_catch

		return list;
	}

}
