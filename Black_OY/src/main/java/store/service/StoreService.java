package store.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import store.domain.CityDTO;
import store.domain.DistrictDTO;
import store.domain.StoreTimeDTO;
import store.persistence.StoreDAO;
import store.persistence.StoreDAOImpl;

public class StoreService {
	private static StoreService instance = null;

	private StoreService() {}

	public static StoreService getinstance() {
		if (instance == null) {
			instance = new StoreService();
		}
		return instance;
	} // getinstance

	public List<StoreTimeDTO> storeSelectAll(String city, String district) {
		List<StoreTimeDTO> list = null;

		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			StoreDAO dao = StoreDAOImpl.getInstance();
			list = dao.storeSelectAll(conn, city, district);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}

		return list;
	}
	
	public List<CityDTO> citySelectAll() {
		List<CityDTO> list = null;

		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			StoreDAO dao = StoreDAOImpl.getInstance();
			list = dao.citySelectAll(conn);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}

		return list;
	}
	
	public List<DistrictDTO> districtSelectAll(String city_id) {
		List<DistrictDTO> list = null;

		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			StoreDAO dao = StoreDAOImpl.getInstance();
			list = dao.districtSelectAll(conn, city_id);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}

		return list;
	}
}
