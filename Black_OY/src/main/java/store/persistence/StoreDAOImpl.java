package store.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

import store.domain.CityDTO;
import store.domain.DistrictDTO;
import store.domain.StoreDTO;
import store.domain.StoreTimeDTO;

public class StoreDAOImpl implements StoreDAO {
	private static StoreDAOImpl instance = new StoreDAOImpl();
	
	private StoreDAOImpl() {}
	
	public static StoreDAOImpl getInstance() {
		return instance;
	} // getInstance

	@Override
	public List<StoreTimeDTO> storeSelectAll(Connection conn, String city, String district) throws SQLException {
		ArrayList<StoreTimeDTO> list = null;
		
		String pattern = "%" + city + " " + district + "%";
		String sql = "SELECT s.store_id, store_name, store_tel, store_addr "
				+ "    , store_dir, store_parking, store_spec, store_fav, weekday, saturday, sunday, holiday "
				+ " FROM store s JOIN store_time st ON s.store_id = st.store_id "
				+ " WHERE store_addr LIKE ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StoreTimeDTO dto = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pattern);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					dto = StoreTimeDTO.builder()
							.store_id(rs.getString("store_id"))
							.store_name(rs.getString("store_name"))
							.store_tel(rs.getString("store_tel"))
							.store_addr(rs.getString("store_addr"))
							.store_dir(rs.getString("store_dir"))
							.store_parking(rs.getString("store_parking"))
							.store_spec(rs.getString("store_spec"))
							.store_fav(rs.getInt("store_fav"))
							.weekday(rs.getString("weekday"))
							.saturday(rs.getString("saturday"))
							.sunday(rs.getString("sunday"))
							.holiday(rs.getString("holiday"))
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

	@Override
	public List<CityDTO> citySelectAll(Connection conn) throws SQLException {
		ArrayList<CityDTO> list = null;
		
		String sql = "SELECT * "
				+ " FROM city ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		CityDTO dto = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					dto = CityDTO.builder()
							.city_id(rs.getString("city_id"))
							.city_name(rs.getString("city_name"))
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

	@Override
	public List<DistrictDTO> districtSelectAll(Connection conn, String city_id) throws SQLException {
		ArrayList<DistrictDTO> list = null;
		
		String sql = "SELECT * "
				+ " FROM district "
				+ " WHERE city_id=?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		DistrictDTO dto = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, city_id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					dto = DistrictDTO.builder()
							.district_id(rs.getString("district_id"))
							.city_id(rs.getString("city_id"))
							.district_name(rs.getString("district_name"))
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

	@Override
	public List<StoreTimeDTO> storeSelectKeyword(Connection conn, String keyword) throws SQLException {
		ArrayList<StoreTimeDTO> list = null;
		
		String pattern = "%" + keyword + "%";
		String sql = "SELECT s.store_id, store_name, store_tel, store_addr "
				+ "    , store_dir, store_parking, store_spec, store_fav, weekday, saturday, sunday, holiday "
				+ " FROM store s JOIN store_time st ON s.store_id = st.store_id "
				+ " WHERE store_addr LIKE ? OR store_name LIKE ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StoreTimeDTO dto = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pattern);
			pstmt.setString(2, pattern);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					dto = StoreTimeDTO.builder()
							.store_id(rs.getString("store_id"))
							.store_name(rs.getString("store_name"))
							.store_tel(rs.getString("store_tel"))
							.store_addr(rs.getString("store_addr"))
							.store_dir(rs.getString("store_dir"))
							.store_parking(rs.getString("store_parking"))
							.store_spec(rs.getString("store_spec"))
							.store_fav(rs.getInt("store_fav"))
							.weekday(rs.getString("weekday"))
							.saturday(rs.getString("saturday"))
							.sunday(rs.getString("sunday"))
							.holiday(rs.getString("holiday"))
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

	@Override
	public int updateStoreFav(Connection conn, String store_id, int clickCheck) throws SQLException {
		int rowCount = 0;
		
		String sql = "UPDATE store "
				+ " SET store_fav = store_fav + ? "
				+ " WHERE store_id=?";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, clickCheck);
			pstmt.setString(2, store_id);
			rowCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
		}// try_catch
		
		return rowCount;
	}

	@Override
	public int insertAttShop(Connection conn, String store_id, String user_id) throws SQLException {
		int rowCount = 0;
		
		String sql = "INSERT INTO att_shop "
				+ " VALUES('AS_'||TO_CHAR(seq_att_shop.NEXTVAL, 'FM00000000'), ?, ?)";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setString(2, store_id);
			rowCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
		}// try_catch
		
		return rowCount;
	}

	@Override
	public int deleteAttShop(Connection conn, String store_id, String user_id) throws SQLException {
		int rowCount = 0;
		
		String sql = "DELETE FROM att_shop "
				+ " WHERE store_id=? AND user_id=?";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, store_id);
			pstmt.setString(2, user_id);
			rowCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
		}// try_catch
		
		return rowCount;	
	}

	@Override
	public List<StoreTimeDTO> attShopSelect(Connection conn, String user_id) throws SQLException {
		ArrayList<StoreTimeDTO> list = null;
		
		String sql = "SELECT * "
				+ " FROM store s JOIN store_time st ON s.store_id = st.store_id "
				+ "             JOIN att_shop a ON s.store_id = a.store_id "
				+ " WHERE a.user_id = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StoreTimeDTO dto = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					dto = StoreTimeDTO.builder()
							.store_id(rs.getString("store_id"))
							.store_name(rs.getString("store_name"))
							.store_tel(rs.getString("store_tel"))
							.store_addr(rs.getString("store_addr"))
							.store_dir(rs.getString("store_dir"))
							.store_parking(rs.getString("store_parking"))
							.store_spec(rs.getString("store_spec"))
							.store_fav(rs.getInt("store_fav"))
							.weekday(rs.getString("weekday"))
							.saturday(rs.getString("saturday"))
							.sunday(rs.getString("sunday"))
							.holiday(rs.getString("holiday"))
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
