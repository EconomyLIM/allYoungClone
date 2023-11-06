package store.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import store.domain.CityDTO;
import store.domain.DistrictDTO;
import store.domain.StoreTimeDTO;

public interface StoreDAO {
	// 1. 스토어 전부를 얻어오는 함수
	List<StoreTimeDTO> storeSelectAll(Connection conn, String city, String district) throws SQLException;
	
	// 2. 도시 전부를 얻어오는 함수
	List<CityDTO> citySelectAll(Connection conn) throws SQLException;
	
	// 3. 구 전부를 얻어오는 함수
	List<DistrictDTO> districtSelectAll(Connection conn, String city_id) throws SQLException;
	
	// 4. 
}
