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
	
	// 4. keyword로 매장 list 가져오기
	List<StoreTimeDTO> storeSelectKeyword(Connection conn, String keyword) throws SQLException;
	
	// 5. 매장 즐겨찾기 수 업데이트
	int updateStoreFav(Connection conn, String store_id, int clickCheck) throws SQLException;
	
	// 6. 관심 매장 테이블에 추가
	int insertAttShop(Connection conn, String store_id, String user_id) throws SQLException;
	
	// 7. 관심 매장 테이블 삭제
	int deleteAttShop(Connection conn, String store_id, String user_id) throws SQLException;
	
	// 8. 
}
