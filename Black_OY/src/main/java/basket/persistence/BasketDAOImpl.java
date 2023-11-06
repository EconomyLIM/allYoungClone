package basket.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

import basket.domain.BasketDTO;

public class BasketDAOImpl implements BasketDAO{
	
	private BasketDAOImpl() {}
	private static BasketDAOImpl instance = new BasketDAOImpl();
	public static BasketDAOImpl getInstance() {
		return instance;
	}

	@Override
	public List<BasketDTO> basketList(Connection conn, String user_id) {
		ArrayList<BasketDTO> basketList = null; 
		BasketDTO basketDTO = null;
		String sql = "Select basket_id, user_id, product_id, product_cnt from basket where user_id = ? ";
		
		PreparedStatement psmt = null;
		ResultSet rs = null;

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, user_id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				do {
				basketDTO = new BasketDTO(rs.getString("basket_id"),rs.getString("user_id") , rs.getString("product_id"), rs.getInt("product_cnt"));
				basketList.add(basketDTO);
				}while(rs.next());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(psmt);
			JDBCUtil.close(rs);
		}
		
		return basketList;
	}

}
