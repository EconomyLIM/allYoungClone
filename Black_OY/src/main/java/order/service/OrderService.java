package order.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import basket.service.BasketListService;
import order.domain.CouponDTO;
import order.domain.DeliveryDTO;
import order.domain.UserCouponDTO;
import order.persistence.OrderDAOImpl;

public class OrderService {

	private OrderService() {};
	private static OrderService instance = null;
	public static OrderService getInstance() {
		if (instance == null) {
			instance = new OrderService();
		}
		return instance;
	}
	
	public List<DeliveryDTO> getDeliveryList(String user_id){
		List<DeliveryDTO> list = null;
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			OrderDAOImpl orderDAOImpl = OrderDAOImpl.getInstance();
			list = orderDAOImpl.selectAllDelivery(conn, user_id);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">OrderService.deliveryService");
		} finally {
			JDBCUtil.close(conn);
		}
		
		return list;
	}
	
	
	public DeliveryDTO getDeliveryOne(String user_id) {
		DeliveryDTO dto = null;
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			OrderDAOImpl orderDAOImpl = OrderDAOImpl.getInstance();
			dto = orderDAOImpl.selectOneDelivery(conn, user_id);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">OrderService.deliveryService");
		} finally {
			JDBCUtil.close(conn);
		}
		
		return dto;
	}
	
	public DeliveryDTO getDeliveryIDOne(String delivery_id) {
		DeliveryDTO dto = null;
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			OrderDAOImpl orderDAOImpl = OrderDAOImpl.getInstance();
			dto = orderDAOImpl.selectOneDeliveryID(conn, delivery_id);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">OrderService.deliveryService");
		} finally {
			JDBCUtil.close(conn);
		}
		
		return dto;
	}

	public List<UserCouponDTO> getHasCouponList(String user_id) {
		List<UserCouponDTO> list = null;
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			OrderDAOImpl orderDAOImpl = OrderDAOImpl.getInstance();
			list = orderDAOImpl.selectCouponList(conn, user_id);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">OrderService.deliveryService");
		} finally {
			JDBCUtil.close(conn);
		}
		
		return list;
	}
	
}
