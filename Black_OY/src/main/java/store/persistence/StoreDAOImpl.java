package store.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

import store.domain.StoreDTO;

public class StoreDAOImpl implements StoreDAO {
	private static StoreDAOImpl instance = new StoreDAOImpl();
	
	private StoreDAOImpl() {}
	
	public static StoreDAOImpl getInstance() {
		return instance;
	} // getInstance

	@Override
	public List<StoreDTO> storeSelectAll(Connection conn, String city, String district) throws SQLException {
		ArrayList<StoreDTO> list = null;
		
		String sql = "SELECT * "
				+ " FROM store ";
				//+ " WHERE store_addr LIKE '%?'";
				//+ " WHERE store_addr LIKE '%?%?%'";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StoreDTO dto = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			//pstmt.setString(1, city);
			//pstmt.setString(2, district);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					dto = StoreDTO.builder()
							.store_id(rs.getString("store_id"))
							.district_id(rs.getString("district_id"))
							.store_name(rs.getString("store_name"))
							.store_tel(rs.getString("store_tel"))
							.store_addr(rs.getString("store_addr"))
							.store_dir(rs.getString("store_dir"))
							.store_parking(rs.getString("store_parking"))
							.store_spec(rs.getString("store_spec"))
							.store_fav(rs.getInt("store_fav"))
							.build();
					
					list.add(dto);
					
				} while ( rs.next() );
				
			} // if
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}// try_catch
		
		return list;
	}

}
