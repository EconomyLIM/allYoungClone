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

	public List<StoreTimeDTO> storeSelectAll(String city, String district, String[] tcs, String[] pss) {
		List<StoreTimeDTO> list = null;

		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			StoreDAO dao = StoreDAOImpl.getInstance();
			list = dao.storeSelectAll(conn, city, district, tcs, pss);
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
	
	public List<StoreTimeDTO> storeSelectKeyword(String keyword) {
		List<StoreTimeDTO> list = null;

		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			StoreDAO dao = StoreDAOImpl.getInstance();
			list = dao.storeSelectKeyword(conn, keyword);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}

		return list;
	}
	
	/*
	 * 만약 테이블에 저장되어 있다면 저장할 필요가 없다.
	 * 조건을 체크해서 행을 삭제할지 추가할지 선택하자.
	 */
	public int addAttrShop(String store_id, int clickCheck, String user_id) {
		int rowCount = 0;

		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			StoreDAO dao = StoreDAOImpl.getInstance();
			
			rowCount = dao.updateStoreFav(conn, store_id, clickCheck);
			if(clickCheck == 1) {
				rowCount = dao.insertAttShop(conn, store_id, user_id);	
			} else {
				rowCount = dao.deleteAttShop(conn, store_id, user_id);
			}
			return rowCount;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}

		return rowCount;
	}
	
	public List<StoreTimeDTO> getAttShopList(String user_id, String[] tcs, String[] pss) {
		List<StoreTimeDTO> list = null;

		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			StoreDAO dao = StoreDAOImpl.getInstance();
			list = dao.attShopSelect(conn, user_id, tcs, pss);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}

		return list;
	}
	
	public List<StoreTimeDTO> getStoreListCondition(String[] tcs, String[] pss, String keyword) {
		List<StoreTimeDTO> list = null;

		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			StoreDAO dao = StoreDAOImpl.getInstance();
			list = dao.selectStoreCondition(conn, tcs, pss, keyword);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}

		return list;
	}
}
