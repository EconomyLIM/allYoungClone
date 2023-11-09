package basket.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import basket.domain.BasketDTO;
import basket.persistence.BasketDAOImpl;

public class BasketListService {

	private BasketListService() {}
	private static BasketListService instance = null;
	
	public static BasketListService getInstance() {
		if (instance == null) {
			instance = new BasketListService();
		}
		return instance;
	}
	
	public List<BasketDTO> basketListService(String user_id, String quickyn){
		Connection conn = null;

		try {

			conn = ConnectionProvider.getConnection();
			BasketDAOImpl basketDAOImpl = BasketDAOImpl.getInstance();
			List<BasketDTO> list = basketDAOImpl.basketList(conn, user_id, quickyn);
			return list;

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">BasketListService.basketListService");
		} finally {
			JDBCUtil.close(conn);
		} // try_catch

		return null;
	}
	
	public int basketListDeleteService(String user_id, String product_id, String quickyn) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			BasketDAOImpl basketDAOImpl = BasketDAOImpl.getInstance();
			int row = basketDAOImpl.basketDelete(conn, user_id, product_id, quickyn);
			return row;
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn);
		}
		return 0;
	}
	
	public int basketAddService(String user_id, String productid, String quickyn, int product_cnt) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			BasketDAOImpl basketDAOImpl = BasketDAOImpl.getInstance();
			int row = basketDAOImpl.basketAdd(conn, user_id, productid, quickyn, product_cnt);
			return row;
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn);
		}
		return 0;
	}
	
}
