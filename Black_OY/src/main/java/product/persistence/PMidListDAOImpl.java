package product.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

import product.domain.PbrandListDTO;
import product.domain.PlowcateDTO;

public class PMidListDAOImpl  implements PMidListDAO{
	
	// 싱글톤
	private PMidListDAOImpl() {}
	private static PMidListDAOImpl instance = new PMidListDAOImpl();
	public static PMidListDAOImpl getInstance() {
		return instance;
	} // getInstance

	@Override
	public List<PlowcateDTO> selectLowCate(Connection conn, int mId) throws Exception {
		String sql = " SELECT cat_s_name FROM cate_s "
				+ " WHERE cat_m_id = 301 ";
		
		ArrayList<PlowcateDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PlowcateDTO plowcateDTO = null;
		String plowcate;
		
		try {
			pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, mId);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					
					plowcate = rs.getString("cat_s_name");
					plowcateDTO = new PlowcateDTO(plowcate);
					
					list.add(plowcateDTO);
					
				} while ( rs.next() );
				
			} // if
			
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("> PMidListDAOImpl SQLException");
		} catch (Exception e) {
			System.out.println("> PMidListDAOImpl SQLException");
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}// try_catch
		
		return list;
		
	} // selectLowCate

	@Override
	public List<PbrandListDTO> selectBrand(Connection con, int mId) throws Exception {
		String sql = " SELECT DISTINCT brand_name "
				+ " FROM brand b "
				+ " JOIN product_display pd ON b.brand_id = pd.brand_id "
				+ " JOIN product p ON pd.pro_displ_id = p.pro_displ_id "
				+ " JOIN cate_s cs ON p.cat_s_id = cs.cat_s_id "
				+ " JOIN cate_m cm ON cm.cat_m_id = cs.cat_m_id "
				+ " WHERE cs.cat_m_id = 301 ";
		
		ArrayList<PbrandListDTO> list = null;
		
		return null;
	} // selectBrand

} // class
