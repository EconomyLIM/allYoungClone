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
	public List<DeliveryDTO> delivery(Connection conn, String user_id) throws Exception {
		ArrayList<DeliveryDTO> deliverylist = null;
		DeliveryDTO deliveryDTO = null;
		String sql = "Select delivery_id, user_id, deli_name, deli_zip, deli_road_addr, deli_addr, deli_baddr, deli_recipient, deli_tel, deli_tel2, req_select, req_content from delivery where user_id = ? ";
		
		String delivery_id;    
		String deli_name;      
		String deli_zip;	   
		String deli_road_addr; 
		String deli_addr;      
		String deli_baddr;     
		String deli_recipient; 
		String deli_tel;       
		String deli_tel2;      
		String req_select;     
		String req_content;    
		//int def_del;           
		
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, user_id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				deliverylist = new ArrayList<DeliveryDTO>();
				do {
					delivery_id = rs.getString("delivery_id");    
					deli_name = rs.getString("deli_name");      
					deli_zip = rs.getString("deli_zip");	   
					deli_road_addr = rs.getString("deli_road_addr"); 
					deli_addr = rs.getString("deli_addr");      
					deli_baddr = rs.getString("deli_baddr");     
					deli_recipient = rs.getString("deli_recipient");
					deli_tel = rs.getString("deli_tel");       
					deli_tel2 = rs.getString("deli_tel2");      
					req_select = rs.getString("req_select");     
					req_content = rs.getString("req_content");    
					//def_del = rs.getInt("def_del");
					
					deliveryDTO = new DeliveryDTO(delivery_id, user_id, deli_name, deli_zip, deli_road_addr, deli_addr, deli_baddr, deli_recipient, deli_tel, deli_tel2, req_select, req_content);
					deliverylist.add(deliveryDTO);
				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(psmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		
		return deliverylist;
	}

}
