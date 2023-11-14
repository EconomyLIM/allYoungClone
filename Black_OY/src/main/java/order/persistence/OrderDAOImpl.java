package order.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

import order.domain.CouponDTO;
import order.domain.DeliveryDTO;
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
		
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, user_id);
			rs = psmt.executeQuery();
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
			JDBCUtil.close(psmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		return list;
	}

	@Override
	public DeliveryDTO selectOneDelivery(Connection conn, String user_id) throws Exception {
		DeliveryDTO dto = null;
		String sql = "SELECT * "
				+ " FROM delivery "
				+ " WHERE user_id = ? AND def_del=1";
		
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, user_id);
			rs = psmt.executeQuery();
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
			JDBCUtil.close(psmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		return dto;
	}

	@Override
	public DeliveryDTO selectOneDeliveryID(Connection conn, String delevery_id) throws Exception {
		DeliveryDTO dto = null;
		String sql = "SELECT * "
				+ " FROM delivery "
				+ " WHERE delivery_id = ? ";
		
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, delevery_id);
			rs = psmt.executeQuery();
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
			JDBCUtil.close(psmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
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
		
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, user_id);
			rs = psmt.executeQuery();
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
			JDBCUtil.close(psmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		return list;
	}

}
