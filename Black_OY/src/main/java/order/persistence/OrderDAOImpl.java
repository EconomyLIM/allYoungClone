package order.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.util.JDBCUtil;

import order.domain.DeliveryDTO;
import order.domain.PaymentDTO;
import order.domain.ProductInfo;
import order.domain.UserCouponDTO;


public class OrderDAOImpl implements OrderDAO {

	private OrderDAOImpl() {
	};

	private static OrderDAOImpl instance = new OrderDAOImpl();

	public static OrderDAOImpl getInstance() {
		return instance;
	}

	@Override
	public List<DeliveryDTO> selectAllDelivery(Connection conn, String user_id) throws Exception {
		List<DeliveryDTO> list = null;
		DeliveryDTO dto = null;
		String sql = "SELECT * "
				+ " FROM delivery "
				+ " WHERE user_id = ? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					dto = DeliveryDTO.builder()
							.delivery_id(rs.getString("delivery_id"))
							.user_id(rs.getString("user_id"))
							.deli_name(rs.getString("deli_name"))
							.deli_zip(rs.getString("deli_zip"))
							.deli_road_addr(rs.getString("deli_road_addr"))
							.deli_addr(rs.getString("deli_addr"))
							.deli_baddr(rs.getString("deli_baddr"))
							.deli_recipient(rs.getString("deli_recipient"))
							.deli_tel(rs.getString("deli_tel"))
							.deli_tel2(rs.getString("deli_tel2"))
							.req_select(rs.getString("req_select"))
							.req_content(rs.getString("req_content"))
							.def_del(rs.getInt("def_del"))
							.build();
					list.add(dto);
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}
		
		return list;
	}

	@Override
	public DeliveryDTO selectOneDelivery(Connection conn, String user_id) throws Exception {
		DeliveryDTO dto = null;
		String sql = "SELECT * "
				+ " FROM delivery "
				+ " WHERE user_id = ? AND def_del=1";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto = DeliveryDTO.builder()
						.delivery_id(rs.getString("delivery_id"))
						.user_id(rs.getString("user_id"))
						.deli_name(rs.getString("deli_name"))
						.deli_zip(rs.getString("deli_zip"))
						.deli_road_addr(rs.getString("deli_road_addr"))
						.deli_addr(rs.getString("deli_addr"))
						.deli_baddr(rs.getString("deli_baddr"))
						.deli_recipient(rs.getString("deli_recipient"))
						.deli_tel(rs.getString("deli_tel"))
						.deli_tel2(rs.getString("deli_tel2"))
						.req_select(rs.getString("req_select"))
						.req_content(rs.getString("req_content"))
						.def_del(rs.getInt("def_del"))
						.build();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}
		
		return dto;
	}

	@Override
	public DeliveryDTO selectOneDeliveryID(Connection conn, String delevery_id) throws Exception {
		DeliveryDTO dto = null;
		String sql = "SELECT * "
				+ " FROM delivery "
				+ " WHERE delivery_id = ? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, delevery_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto = DeliveryDTO.builder()
						.delivery_id(rs.getString("delivery_id"))
						.user_id(rs.getString("user_id"))
						.deli_name(rs.getString("deli_name"))
						.deli_zip(rs.getString("deli_zip"))
						.deli_road_addr(rs.getString("deli_road_addr"))
						.deli_addr(rs.getString("deli_addr"))
						.deli_baddr(rs.getString("deli_baddr"))
						.deli_recipient(rs.getString("deli_recipient"))
						.deli_tel(rs.getString("deli_tel"))
						.deli_tel2(rs.getString("deli_tel2"))
						.req_select(rs.getString("req_select"))
						.req_content(rs.getString("req_content"))
						.def_del(rs.getInt("def_del"))
						.build();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}
		
		return dto;
	}

	@Override
	public List<UserCouponDTO> selectCouponList(Connection conn, String user_id) throws Exception {
		List<UserCouponDTO> list = null;
		UserCouponDTO dto = null;
		String sql = "SELECT * "
				+ "FROM user_coupon uc JOIN coupon c ON uc.coupon_id = c.coupon_id "
				+ "WHERE user_id = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					dto = UserCouponDTO.builder()
							.uc_id(rs.getString("uc_id"))
							.user_id(rs.getString("user_id"))
							.coupon_id(rs.getString("coupon_id"))
							.coup_cate(rs.getString("coup_cate"))
							.coup_name(rs.getString("coup_name"))
							.coup_price(rs.getDouble("coup_price"))
							.coup_condition(rs.getInt("coup_condition"))
							.coup_start(rs.getDate("coup_start"))
							.coup_end(rs.getDate("coup_end"))
							.build();
					list.add(dto);
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}
		
		return list;
	}

	@Override
	public List<ProductInfo> selectProductList(Connection conn, String[] product_id) throws Exception {
		List<ProductInfo> list = null;
		ProductInfo dto = null;
		String sql = "SELECT * "
				+ " FROM prodetail "
				+ " WHERE pro_id IN ( ";
		
		for (int i = 0; i < product_id.length; i++) {
			sql += (i==product_id.length-1) ? "?" : "?,";
		}
		sql += ")";
		
		System.out.println("selectProductList - sql : " + sql);
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			for (int i = 0; i < product_id.length; i++) {
				pstmt.setString(i+1, product_id[i]);
			}
			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					dto = ProductInfo.builder()
							.displId(rs.getString("pro_displ_id"))
							.displName(rs.getString("pro_displ_name"))
							.brandId(rs.getString("brand_id"))
							.brandName(rs.getString("brand_name"))
							.proImg(rs.getString("pro_img_src"))
							.proId(rs.getString("pro_id"))
							.proName(rs.getString("pro_name"))
							.catSId(rs.getString("cat_s_id"))
							.proPrice(rs.getInt("pro_price"))
							.pafterPrice(rs.getInt("PafterPrice"))
							.lowPrice(rs.getInt("lowprice"))
							.afterPrice(rs.getInt("afterprice"))
							.prc(rs.getInt("prc"))
							.prd(rs.getInt("prd"))
							.prp(rs.getInt("prp"))
							.stock(rs.getInt("stock"))
							.proStock(rs.getInt("pro_stock"))
							.build();
					list.add(dto);
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}
		
		return list;
	}

	@Override
	public int insertOrder(Connection conn, Map<String, Object> map) {
		int rowCount = 0;
		
		String sql = "INSERT INTO o_order(order_id, user_id, delivery_id, delivery_date, order_status, delivery_msg, visit_pwd, col"
				+ " , order_type, today_opt, packaging_opt) "
				+ " VALUES('or_'||TO_CHAR(order_seq.NEXTVAL, 'FM00000000'), ?, ? "
				+ ", ?, ?, ?, ?, ?, ?, ?, ?)";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, (String)map.get("user_id"));
			pstmt.setString(2, (String)map.get("delivery_id"));
			
			Date d = new Date();
			d.setDate(d.getDate()+3);
			
			pstmt.setDate(3, new java.sql.Date(d.getTime()));
			pstmt.setString(4, "결제완료");
			pstmt.setString(5, (String)map.get("delivery_msg"));
			pstmt.setString(6, (String)map.get("visit_how"));
			pstmt.setString(7, (String)map.get("visit_pwd"));
			pstmt.setString(8, "온라인");
			pstmt.setString(9, (String)map.get("today_opt"));
			pstmt.setString(10, (String)map.get("packaging_opt"));
			
			rowCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
		}
		
		return rowCount;
	}
	
	@Override
	public int insertPayment(Connection conn, Map<String, Object> map) throws Exception {
		int rowCount = 0;
		
		String sql = "INSERT INTO payment(pay_id, order_id, total_price, pay_price, delivery_price, cd_price, point_price, pay_type, saved_money, card_type, inst_type) "
				+ " VALUES('pa_'||TO_CHAR(pay_seq.NEXTVAL, 'FM00000000'), 'or_'||TO_CHAR(order_seq.CURRVAL, 'FM00000000')"
				+ " , ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, (Integer)map.get("totalPrice"));
			pstmt.setInt(2, (Integer)map.get("totalPay"));
			pstmt.setInt(3,  (Integer)map.get("delivery_price"));
			pstmt.setInt(4, (Integer)map.get("cd_price"));
			pstmt.setInt(5, (Integer)map.get("point_price"));
			pstmt.setString(6, (String)map.get("pay_type"));
			pstmt.setInt(7, (int)((Integer)map.get("totalPay")*0.005));
			pstmt.setString(8, (String)map.get("card_type"));
			pstmt.setString(9, (String)map.get("inst_type"));
			
			
			rowCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
		}
		
		return rowCount;
	}

	@Override
	public int insertOrderProduct(Connection conn, String product_id, int product_cnt, String cat_m_id) throws Exception {
		int rowCount = 0;
		
		String sql = "INSERT INTO order_product(op_id, order_id, product_id, product_cnt, cat_m_id) "
				+ " VALUES('op_'||TO_CHAR(op_seq.NEXTVAL, 'FM00000000'), 'or_'||TO_CHAR(order_seq.CURRVAL, 'FM00000000')"
				+ " , ?, ?, ?)";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			
				pstmt.setString(1, product_id);
				pstmt.setInt(2, product_cnt);
				pstmt.setString(3, cat_m_id);
				rowCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
		}
		
		return rowCount;
	}

	@Override
	public String selectCatMID(Connection conn, String pro_id) throws Exception {
		String cat_m_id = null;
		String sql = "SELECT cat_m_id "
				+ " FROM product p JOIN cate_s c ON p.cat_s_id = c.cat_s_id "
				+ " WHERE pro_id = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pro_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				cat_m_id = rs.getString("cat_m_id");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}
		
		return cat_m_id;
	}

	@Override
	public int updateUserPoint(Connection conn, String user_id, int point) throws Exception {
		int rowCount = 0;
		
		String sql = "UPDATE o_user  "
				+ " SET u_point = u_point + ? "
				+ " WHERE user_id = ? ";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, point);
			pstmt.setString(2, user_id);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt);
		}
		
		return rowCount;
	}
	
	@Override
	public int insertToday(Connection conn, Map<String, Object> map) throws Exception {
		int rowCount = 0;
		
		String sql = "INSERT INTO today_delivery(today_id, order_id, user_addr, hour_group, today_type, today_del_date, today_arrive) "
				+ " VALUES('td_'||TO_CHAR(td_seq.NEXTVAL, 'FM00000000'), 'or_'||TO_CHAR(order_seq.CURRVAL, 'FM00000000') "
				+ " , ?, ?, ?, ?, TO_DATE(?, 'YYYY-MM-DD HH24:MI'))";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, (String)map.get("region"));
			pstmt.setString(2, (String)map.get("hour_group"));
			pstmt.setString(3, (String)map.get("today_type"));
			pstmt.setString(4, (String)map.get("today_del_date"));
			pstmt.setString(5, (String)map.get("today_arrive"));
			rowCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
		}
		
		return rowCount;
	}

	@Override
	public int insertPickup(Connection conn, Map<String, Object> map) throws Exception {
		int rowCount = 0;
		
		String sql = "INSERT INTO pickup(pickup_id, order_id, store_id) "
				+ " VALUES('op_'||TO_CHAR(op_seq.NEXTVAL, 'FM00000000'), 'or_'||TO_CHAR(order_seq.CURRVAL, 'FM00000000'), ?)";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, (String)map.get("store_id"));
			rowCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
		}
		
		return rowCount;
	}

	@Override
	public String selectCurrOrderID(Connection conn) throws Exception {
		String order_id = "";
		
		String sql = "SELECT 'or_'||TO_CHAR(order_seq.CURRVAL, 'FM00000000') order_id "
				+ " FROM dual";
		
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				order_id = rs.getString("order_id");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}
		
		return order_id;
	}

	@Override
	public int insertGiftOrder(Connection conn, Map<String, Object> map) throws Exception {
		int rowCount = 0;
		
		String sql = "INSERT INTO o_order(order_id, user_id, delivery_date, order_status, order_type) "
				+ " VALUES('or_'||TO_CHAR(order_seq.NEXTVAL, 'FM00000000')"
				+ ", ?, ?, ?, ?)";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, (String)map.get("user_id"));
			pstmt.setDate(2, new java.sql.Date(((Date)map.get("delivery_date")).getTime()));
			pstmt.setString(3, (String)map.get("order_status"));
			pstmt.setString(4, (String)map.get("order_type"));

			rowCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
		}
		
		return rowCount;
		
	}

	@Override
	public int inserGiftPay(Connection conn, Map<String, Object> map) throws Exception {
		int rowCount = 0;
		
		String sql = "INSERT INTO payment(pay_id, order_id, total_price, pay_price, delivery_price, cd_price, point_price, pay_type, saved_money, card_type, inst_type) "
				+ " VALUES('pa_'||TO_CHAR(pay_seq.NEXTVAL, 'FM00000000'), 'or_'||TO_CHAR(order_seq.CURRVAL, 'FM00000000')"
				+ " , ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, (Integer)map.get("total_price"));
			pstmt.setInt(2, (Integer)map.get("pay_price"));
			pstmt.setInt(3,  (Integer)map.get("delivery_price"));
			pstmt.setInt(4, (Integer)map.get("cd_price"));
			pstmt.setInt(5, (Integer)map.get("point_price"));
			pstmt.setString(6, (String)map.get("pay_type"));
			pstmt.setInt(7, (int)((Integer)map.get("total_price")*0.005));
			pstmt.setString(8, (String)map.get("card_type"));
			pstmt.setString(9, (String)map.get("inst_type"));
			
			
			rowCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
		}
		
		return rowCount;
	}

	@Override
	public int insertGift(Connection conn, Map<String, Object> map) throws Exception {
		int rowCount = 0;
		
		String sql = "INSERT INTO pay_present "
				+ "VALUES('pg_'||TO_CHAR(pay_seq.NEXTVAL, 'FM00000000'), 'or_'||TO_CHAR(order_seq.CURRVAL, 'FM00000000') "
				+ ", ?, ?, ?, ?)";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, (String)map.get("mc_id"));
			pstmt.setString(2, (String)map.get("receive_name"));
			pstmt.setString(3, (String)map.get("receive_tel"));
			pstmt.setString(4, (String)map.get("msg"));
			
			rowCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
		}
		
		return rowCount;
	}

	@Override
	public int updateProStuck(Connection conn, String pro_id, int cnt) throws Exception {
		int rowCount = 0;
		
		String sql = "UPDATE product "
				+ " SET pro_stock = pro_stock - ? "
				+ " WHERE pro_id = ?";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cnt);
			pstmt.setString(2, pro_id);
			
			rowCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
		}
		
		return rowCount;
	}

	@Override
	public int deleteCart(Connection conn, String user_id, String pro_id) throws Exception {
		int rowCount = 0;
		
		String sql = "DELETE FROM basket "
				+ " WHERE user_id = ? AND product_id = ?";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setString(2, pro_id);
			
			rowCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
		}
		
		return rowCount;
	}

	@Override
	public int insertCJPoint(Connection conn, String user_id, String p_content, String p_state) throws Exception {
		int rowCount = 0;
		
		String sql = "INSERT INTO cjonepoint(cjp_id, order_id, user_id, p_content, p_state) "
				+ "VALUES('cop_'||TO_CHAR(cop_seq.NEXTVAL, 'FM00000000'), 'or_'||TO_CHAR(order_seq.CURRVAL, 'FM00000000') "
				+ ", ?, ?, ?)";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user_id);
			pstmt.setString(2, p_content);
			pstmt.setString(3, p_state);
			
			rowCount = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
		}
		
		return rowCount;
	}

	@Override
	public int selectIsProStock(Connection conn, String pro_id) throws Exception {
		int cnt = 0;
		String sql = "SELECT pro_stock "
				+ " FROM product "
				+ " WHERE pro_id = ? ";
		
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pro_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				cnt = rs.getInt("pro_stock");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}
		
		return cnt;
	}

	@Override
	public PaymentDTO selectOnePayment(Connection conn, String order_id) throws Exception {
		PaymentDTO dto = null;
		String sql = "SELECT * "
				+ " FROM payment "
				+ " WHERE order_id = ?";
		
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, order_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto = PaymentDTO.builder()
						.pay_id(rs.getString("pay_id"))
						.order_id(rs.getString("order_id"))
						.total_price(rs.getInt("total_price"))
						.pay_price(rs.getInt("pay_price"))
						.delivery_price(rs.getInt("delivery_price"))
						.cd_price(rs.getInt("cd_price"))
						.point_price(rs.getInt("point_price"))
						.pay_type(rs.getString("pay_type"))
						.saved_money(rs.getInt("saved_money"))
						.pay_date(rs.getDate("pay_date"))
						.pay_status(rs.getString("pay_status"))
						.card_type(rs.getString("card_type"))
						.inst_type(rs.getString("inst_type"))
						.cr_check(rs.getString("cr_check"))
						.build();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}
		
		return dto;
	}

	@Override
	public DeliveryDTO selectOrderDelivery(Connection conn, String order_id) throws Exception {
		DeliveryDTO dto = null;
		String sql = "SELECT deli_road_addr, deli_addr, deli_baddr, deli_recipient, deli_tel, deli_tel2, req_select, req_content "
				+ " FROM o_order o JOIN delivery d ON o.delivery_id = d.delivery_id "
				+ " WHERE order_id = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, order_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				dto = DeliveryDTO.builder()
						.deli_road_addr(rs.getString("deli_road_addr"))
						.deli_addr(rs.getString("deli_addr"))
						.deli_baddr(rs.getString("deli_baddr"))
						.deli_recipient(rs.getString("deli_recipient"))
						.deli_tel(rs.getString("deli_tel"))
						.deli_tel2(rs.getString("deli_tel2"))
						.req_select(rs.getString("req_select"))
						.req_content(rs.getString("req_content"))
						.build();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		}
		
		return dto;
	}

	


}
