package basket.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.util.JDBCUtil;

import basket.domain.BasketDTO;
import basket.domain.ItemListDTO;

public class BasketDAOImpl implements BasketDAO{
	
	private BasketDAOImpl() {}
	private static BasketDAOImpl instance = new BasketDAOImpl();
	public static BasketDAOImpl getInstance() {
		return instance;
	}
	
	/*
	String sql = " SELECT pro_displ_src, brand_name, pro_displ_name "
			+ " , cat_l_id, cat_m_id, cat_s_id "
			+ " , pro_price, afterprice "
			+ " , pro_displ_id, pro_id "
			+ " , prc, pdc, pmp, stock "
			+ " , ordercnt, pro_displ_like, pro_reg "
			+ " , basket_id,user_id,product_cnt, pro_name "
			+ " FROM pmlistviewbasket join "; 
	if (quickyn != null && quickyn.equals("Y")) {
		sql+=  " BASKET_TD ";
	}else if(quickyn == null || quickyn.equals("") ||quickyn.equals("N") ){
		sql+= " BASKET ";
	}
	
	sql += " on pro_id = product_id " 
		+" where user_id = ? ";
*/
	
	
	
	@Override
	public List<BasketDTO> basketList(Connection conn, String user_id, String quickyn) {
		ArrayList<BasketDTO> basketList = null; 
		BasketDTO basketDTO = null;
		String sql = " SELECT MIN(pro_displ_src) AS pro_displ_src, brand_name, pro_displ_name, "
				+ " cat_l_id, cat_m_id, cat_s_id, pro_price, afterprice, "
				+ " pro_displ_id, pro_id, prc, pdc, pmp, stock, "
				+ " ordercnt, pro_displ_like, pro_reg, basket_id, user_id, "
				+ " product_cnt, pro_name "
				+ " FROM pmlistviewbasket JOIN";
				
		String basketT = null;
		if (quickyn != null && quickyn.equals("Y")) {
			sql+=  " BASKET_TD ";
		}else if(quickyn == null || quickyn.equals("") ||quickyn.equals("N") ){
			sql+= " BASKET ";
		}
		
		sql += " on pro_id = product_id " 
			+" where user_id = ? "
			+" GROUP BY brand_name, pro_displ_name, cat_l_id, cat_m_id, cat_s_id, 	"
			+ "      pro_price, afterprice, pro_displ_id, pro_id, "
			+ "      prc, pdc, pmp, stock, ordercnt, pro_displ_like, "
			+ "      pro_reg, basket_id, user_id, product_cnt, pro_name ";
		
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
			
			//System.out.println(basketT);
			System.out.println("qu:"+quickyn);
			System.out.println(sql);
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
		}else {
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
	
	// 장바구니 버튼 클릭시 상품 목록 출력
	@Override
	public List<ItemListDTO> itemList(Connection conn, String displID) {
		// TODO Auto-generated method stub
		ArrayList<ItemListDTO> itemlist = null; 
		ItemListDTO itemListDTO = null;
		
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		String sql = " Select pro_id, pro_name, pro_price from product  where pro_displ_id = ?  ";
		
		String pro_id;
		String pro_name;
		String pro_price;
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, displID);
			rs = psmt.executeQuery();
			
			if (rs.next()) {
				itemlist = new ArrayList<ItemListDTO>();
				do {
					pro_id = rs.getString("pro_id");
					pro_name = rs.getString("pro_name");
					pro_price = rs.getString("pro_price");
					itemListDTO = new ItemListDTO(pro_id, pro_name, pro_price);
					itemlist.add(itemListDTO);
				} while (rs.next());
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(psmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		return itemlist;
	}
	

	@Override
	public int basketCheck(Connection conn, String user_id, String productid) {
		String sql = " Select user_id, product_id, product_cnt from basket where user_id = ? AND product_id = ? ";
		
		PreparedStatement psmt = null;
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, user_id);
			psmt.setString(2, productid);
			
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

	//장바구니 업데이트
	@Override
	public int basketUpdate(Connection conn, String user_id, String productid) {
		// TODO Auto-generated method stub
		String sql = " UPDATE basket SET product_cnt = product_cnt + 1 WHERE user_id = ? AND product_id = ? ";
		PreparedStatement psmt = null;
		try {
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, user_id);
			psmt.setString(2, productid);
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
	
	// 장바구니 추가
	@Override
	public int basketinsert(Connection conn, String user_id, String productid) {
		// TODO Auto-generated method stub
		String sql = " INSERT INTO basket (basket_id, user_id, product_id, product_cnt) "
				+ "VALUES ('nb_' || TO_CHAR(basket_seq.NEXTVAL, 'FM00000000'), ?, ?, 1) ";
		PreparedStatement psmt = null;
		try {
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, user_id);
			psmt.setString(2, productid);
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
	
	// 아이템 수량 + 오늘드림 여부
	@Override
	public int basketCheck(Connection conn, String user_id, String productid, String quickYn) {
		// TODO Auto-generated method stub
		String sql = " Select user_id, product_id, product_cnt from ";
				if (quickYn != null && quickYn.equals("Y")) {
					sql+=  " BASKET_TD ";
				}else if(quickYn == null || quickYn.equals("") ||quickYn.equals("N") ){
					sql+= " BASKET ";
				}
		
		sql+= "where user_id = ? AND product_id = ? ";
		
		PreparedStatement psmt = null;
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, user_id);
			psmt.setString(2, productid);
			
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
	public int basketUpdate(Connection conn, String user_id, String productid, String quickYn, int cnt) {
		// TODO Auto-generated method stub
		String sql = " UPDATE ";
		
		if (quickYn != null && quickYn.equals("Y")) {
			sql+=  " BASKET_TD ";
		}else if(quickYn == null || quickYn.equals("") ||quickYn.equals("N") ){
			sql+= " BASKET ";
		}
		sql+= " SET product_cnt = ? WHERE user_id = ? AND product_id = ? ";
		PreparedStatement psmt = null;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, cnt);
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

	@Override
	public int basketinsert(Connection conn, String user_id, String productid, String quickYn, int cnt) {
		// TODO Auto-generated method stub
		String sql = " INSERT INTO";
		
		if (quickYn != null && quickYn.equals("Y")) {
			sql+=  " BASKET_TD ";
			sql+= " (basket_id, user_id, product_id, product_cnt) ";
			sql+= " VALUES ('tb_' || TO_CHAR(basket_seq.NEXTVAL, 'FM00000000'), ?, ?, ?) ";
		}else if(quickYn == null || quickYn.equals("") ||quickYn.equals("N") ){
			sql+= " BASKET ";
			sql+= " (basket_id, user_id, product_id, product_cnt) ";
			sql+= " VALUES ('nb_' || TO_CHAR(basket_seq.NEXTVAL, 'FM00000000'), ?, ?, ?) ";
		}
		
				
		PreparedStatement psmt = null;
		try {
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, user_id);
			psmt.setString(2, productid);
			psmt.setInt(3, cnt);
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
