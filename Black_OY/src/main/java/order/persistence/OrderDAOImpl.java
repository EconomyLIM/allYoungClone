package order.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

import order.domain.DeliveryDTO;

public class OrderDAOImpl implements OrderDAO {

	private OrderDAOImpl() {
	};

	private static OrderDAOImpl instance = new OrderDAOImpl();

	public static OrderDAOImpl getInstance() {
		return instance;
	}

	@Override
	public List<DeliveryDTO> SelectAllDelivery(Connection conn, String user_id) throws Exception {
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
	public DeliveryDTO SelectOneDelivery(Connection conn, String user_id) throws Exception {
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

}
