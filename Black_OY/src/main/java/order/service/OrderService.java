package order.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import order.domain.DeliveryDTO;
import order.domain.PaymentDTO;
import order.domain.ProductInfo;
import order.domain.UserCouponDTO;
import order.persistence.OrderDAO;
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
			OrderDAO dao = OrderDAOImpl.getInstance();
			list = dao.selectAllDelivery(conn, user_id);
			
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
			OrderDAO dao = OrderDAOImpl.getInstance();
			dto = dao.selectOneDelivery(conn, user_id);
			
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
			OrderDAO dao = OrderDAOImpl.getInstance();
			dto = dao.selectOneDeliveryID(conn, delivery_id);
			
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
			OrderDAO dao = OrderDAOImpl.getInstance();
			list = dao.selectCouponList(conn, user_id);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">OrderService.deliveryService");
		} finally {
			JDBCUtil.close(conn);
		}
		
		return list;
	}

	public List<ProductInfo> getProductList(String[] product_id) {
		List<ProductInfo> list = null;
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			OrderDAO dao = OrderDAOImpl.getInstance();
			list = dao.selectProductList(conn, product_id);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">OrderService.deliveryService");
		} finally {
			JDBCUtil.close(conn);
		}
		
		return list;
	}

	public String orderService(Map<String, Object> map) {
		String order_id = "";
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			OrderDAO dao = OrderDAOImpl.getInstance();
			
			conn.setAutoCommit(false);
			
			dao.insertOrder(conn, map);
			dao.insertPayment(conn, map);
			order_id = dao.selectCurrOrderID(conn);
			
			String[] product_id = (String[])map.get("product_id");
			String[] temp = null;
			String cat_m_id = null;
			
			for (int i = 0; i < product_id.length; i++) {
				temp = product_id[i].split("-");
				cat_m_id = dao.selectCatMID(conn, temp[0]);
				dao.updateProStuck(conn, temp[0], Integer.parseInt(temp[1]));
				if(map.get("click").equals("장바구니")) {
					dao.deleteCart(conn, (String)map.get("user_id"), temp[0]);
				}
				dao.insertOrderProduct(conn, temp[0], Integer.parseInt(temp[1]), cat_m_id);
			}
			
			dao.insertCJPoint(conn, (String)map.get("user_id")
					, (int)((Integer)map.get("totalPrice")*0.005) + "P"
					, "적립");
			dao.updateUserPoint(conn, (String)map.get("user_id"), (int)((Integer)map.get("totalPrice")*0.005));
			
			
			
			if(map.get("today_opt").equals("Y")) {
				dao.insertToday(conn, map);
			}
			
			if(map.get("pickupYN").equals("Y")) {
				dao.insertPickup(conn, map);
			}
			
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
			System.out.println(">OrderService.deliveryService");
		} finally {
			JDBCUtil.close(conn);
		}
		
		return order_id;
	}
	
	public String giftOrderService(Map<String, Object> map) {
		String order_id = "";
		
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			OrderDAO dao = OrderDAOImpl.getInstance();
			
			conn.setAutoCommit(false);
			
			dao.insertGiftOrder(conn, map);
			dao.inserGiftPay(conn, map);
			dao.insertGift(conn, map);
			order_id = dao.selectCurrOrderID(conn);
			
			String[] product_id = (String[])map.get("product_id");
			String[] temp = null;
			String cat_m_id = null;
			
			for (int i = 0; i < product_id.length; i++) {
				temp = product_id[i].split("-");
				cat_m_id = dao.selectCatMID(conn, temp[0]);
				dao.updateProStuck(conn, temp[0], Integer.parseInt(temp[1]));
				dao.insertOrderProduct(conn, temp[0], Integer.parseInt(temp[1]), cat_m_id);
			}
			
			dao.insertCJPoint(conn, (String)map.get("user_id")
					, (int)((Integer)map.get("pay_price")*0.005) + "P"
					, "적립");
			dao.updateUserPoint(conn, (String)map.get("user_id"), (int)((Integer)map.get("pay_price")*0.005));
			
			conn.commit();
		} catch (Exception e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			System.out.println(">OrderService.deliveryService");
		} finally {
			JDBCUtil.close(conn);
		}
		
		return order_id;
	}

	public int getProStock(String[] productStr) {
		Connection conn = null;
		int cnt = 1;
		try {
			conn = ConnectionProvider.getConnection();
			OrderDAO dao = OrderDAOImpl.getInstance();
			for (int i = 0; i < productStr.length; i++) {
				cnt = dao.selectIsProStock(conn, productStr[i]);
				if(cnt == 0) {
					return 0;
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">OrderService.deliveryService");
		} finally {
			JDBCUtil.close(conn);
		}
		
		return cnt;
	}

	public PaymentDTO getPayment(String order_id) {
		PaymentDTO dto = null;
		
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			OrderDAO dao = OrderDAOImpl.getInstance();
			dto = dao.selectOnePayment(conn, order_id);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">OrderService.deliveryService");
		} finally {
			JDBCUtil.close(conn);
		}
		
		return dto;
	}

	public DeliveryDTO getOrderDelivery(String order_id) {
		DeliveryDTO dto = null;
		
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			OrderDAO dao = OrderDAOImpl.getInstance();
			dto = dao.selectOrderDelivery(conn, order_id);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">OrderService.deliveryService");
		} finally {
			JDBCUtil.close(conn);
		}
		
		return dto;
	}

	
	
}
