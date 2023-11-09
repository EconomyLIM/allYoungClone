package basket.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
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
	public List<BasketDTO> basketList(Connection conn, String user_id, String quickyn) {
		ArrayList<BasketDTO> basketList = null; 
		BasketDTO basketDTO = null;
		String sql = " SELECT pro_displ_src, brand_name, pro_displ_name "
				+ " , cat_l_id, cat_m_id, cat_s_id "
				+ " , pro_price, afterprice "
				+ " , pro_displ_id, pro_id "
				+ " , prc, pdc, pmp, stock "
				+ " , ordercnt, pro_displ_like, pro_reg "
				+ " , basket_id,user_id,product_cnt, pro_name "
				+ " FROM pmlistviewbasket join "; 
		String basketT = null;
		if (quickyn != null && quickyn.equals("Y")) {
			sql+=  " BASKET_TD ";
		}else if(quickyn == null || quickyn.equals("") ||quickyn.equals("N") ){
			sql+= " BASKET ";
		}
		
		sql += " on pro_id = product_id " 
			+" where user_id = ? ";
		
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		String displImgSrc;
		String brandName;
		String displProName;
		String lId;
		String midId;
		String sId;
		String proPrice;
		String afterPrice;
		String displId;
		String productID;
		int prc;
		int pdc;
		int pmp;
		int stock;
		int displLike;
		int ordercnt;
		Date proReg;
		String basket_id;
		int product_cnt;
		String pro_name;
		
		
		try {
			psmt = conn.prepareStatement(sql);
			
			System.out.println(basketT);
			System.out.println(quickyn);
//			psmt.setString(1, basketT);
			psmt.setString(1, user_id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				basketList = new ArrayList<BasketDTO>();
				do {
					
					displImgSrc = rs.getString("pro_displ_src");
					brandName = rs.getString("brand_name");
					displProName = rs.getString("pro_displ_name");
					lId = rs.getString("cat_l_id");
					midId = rs.getString("cat_m_id");
					sId = rs.getString("cat_s_id");
					proPrice = rs.getString("pro_price");
					afterPrice = rs.getString("afterprice");
					displId = rs.getString("pro_displ_id");
					productID = rs.getString("pro_id");
					prc = Integer.parseInt(rs.getString("prc"));
					pdc = Integer.parseInt(rs.getString("pdc"));
					pmp = Integer.parseInt(rs.getString("pmp"));
					stock = rs.getInt("stock");
					displLike = rs.getInt("pro_displ_like");
					ordercnt = rs.getInt("ordercnt");
					proReg = rs.getDate("pro_reg");
					basket_id = rs.getString("basket_id");
					product_cnt = rs.getInt("product_cnt");
					pro_name = rs.getString("pro_name");
					
					basketDTO = new  BasketDTO(displImgSrc, brandName, displProName, lId, midId, sId, proPrice, afterPrice, displId, productID, prc, pdc, pmp, stock, displLike, ordercnt, proReg, basket_id, user_id, product_cnt, pro_name);
					basketList.add(basketDTO);
				}while(rs.next());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(psmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		return basketList;
	}

	@Override
	public int basketDelete(Connection conn, String user_id, String product_id, String quickyn) {
		String sql = "DELETE from ";
		if (quickyn != null && quickyn.equals("Y")) {
			sql+=  " BASKET_TD ";
		}else if(quickyn == null || quickyn.equals("") ||quickyn.equals("N") ){
			sql+= " BASKET ";
		}		
		sql += " WHERE user_id = ? AND product_id = ? ";
		PreparedStatement psmt = null;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, user_id);
			psmt.setString(2, product_id);
			int row  = psmt.executeUpdate();
			
			return row;
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(psmt);
			JDBCUtil.close(conn);
		}
		
		
		return 0;
	}

	@Override
	public int basketAdd(Connection conn, String user_id, String productid, String quickyn, int product_cnt) {
		String sql = " UPDATE ";
		if (quickyn != null && quickyn.equals("Y")) {
			sql+=  " BASKET_TD ";
		}else if(quickyn == null || quickyn.equals("") ||quickyn.equals("N") ){
			sql+= " BASKET ";
		}
		sql += " SET product_cnt = ? where user_id = ? AND product_id = ? ";
		PreparedStatement psmt = null;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, product_cnt);
			psmt.setString(2, user_id);
			psmt.setString(3, productid);
			int row  = psmt.executeUpdate();
			
			return row;
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(psmt);
			JDBCUtil.close(conn);
		}
		return 0;
	}

}
