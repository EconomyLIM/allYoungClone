package order.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import basket.service.BasketListService;
import order.domain.DeliveryDTO;
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
	
	public List<DeliveryDTO> deliveryService(String user_id){
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			OrderDAOImpl orderDAOImpl = OrderDAOImpl.getInstance();
			List<DeliveryDTO> deliverylist = orderDAOImpl.delivery(conn, user_id);
			return deliverylist;
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">OrderService.deliveryService");
		}finally {
			JDBCUtil.close(conn);
		}
		
		
		return null;
	}
	
	
}
