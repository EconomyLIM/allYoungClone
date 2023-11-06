package store.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import product.domain.PlowcateDTO;
import store.domain.StoreDTO;
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

	public List<StoreDTO> storeSelectAll(String city, String district) {
		List<StoreDTO> list = null;

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
}
