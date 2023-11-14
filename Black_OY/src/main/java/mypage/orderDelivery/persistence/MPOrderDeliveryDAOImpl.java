package mypage.orderDelivery.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.util.JDBCUtil;

import mypage.orderDelivery.domain.MPODOrderDTO;
import mypage.orderDelivery.domain.MPODdeliveryDTO;
import mypage.orderDelivery.domain.MPODpaymentDTO;

public class MPOrderDeliveryDAOImpl implements MPOrderDeliveryDAO {
	
	//싱글톤
	private MPOrderDeliveryDAOImpl() {}
	private static MPOrderDeliveryDAOImpl instance = new MPOrderDeliveryDAOImpl();
	public static MPOrderDeliveryDAOImpl getinstance() {
		return instance;
	}
	
	
	@Override
	public List<MPODOrderDTO> selectUOrder(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT order_id, order_date, pro_displ_src, brand_name, pro_displ_name, pro_name, product_cnt, order_status, total_price, refund_date, refund_status "
				+ " FROM ( "
				+ "    SELECT "
				+ "        o.order_id, "
				+ "        order_date, "
				+ "        pro_displ_src, "
				+ "        brand_name, "
				+ "        pro_displ_name, "
				+ "        pro_name, "
				+ "        product_cnt, "
				+ "        order_status, "
				+ "		   total_price, "
				+ "        refund_date, "
				+ "        refund_status, "
				+ "        ROW_NUMBER() OVER (PARTITION BY pro_name ORDER BY rownum) AS rn "
				+ "    FROM o_order o "
				+ "    LEFT JOIN order_product op ON o.order_id = op.order_id "
				+ "    LEFT JOIN product p ON op.product_id = p.pro_id "
				+ "    LEFT JOIN ( "
				+ "        SELECT pd.pro_displ_id, pro_displ_name, brand_name, pro_displ_src "
				+ "        FROM product_display pd "
				+ "        LEFT JOIN pro_displ_img img ON pd.pro_displ_id = img.pro_displ_id "
				+ "        LEFT JOIN brand b ON pd.brand_id = b.brand_id "
				+ "    ) pd ON p.pro_displ_id = pd.pro_displ_id "
				+ "    LEFT JOIN refund r ON o.order_id = r.order_id "
				+ "	   LEFT JOIN payment pm ON o.order_id = pm.order_id "
				+ "    where user_id = ? "
				+ " ) subquery "
				+ " WHERE rn = 1  ";
		
		ArrayList<MPODOrderDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			rs = pstmt.executeQuery();
			MPODOrderDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<MPODOrderDTO>();
			
			do {
				dto = new MPODOrderDTO();
				dto.setUodDate(rs.getDate("order_date"));
				dto.setUodOrderId(rs.getString("order_id"));
				dto.setUodDisplsrc(rs.getString("pro_displ_src"));
				dto.setUodBrand(rs.getString("brand_name"));
				dto.setUodDisplN(rs.getString("pro_displ_name"));
				dto.setUodProN(rs.getString("pro_name"));
				dto.setUodamount(rs.getInt("product_cnt"));
				dto.setUodorderPrice(rs.getInt("total_price"));
				dto.setUodState(rs.getString("order_status"));
				dto.setUodRFdate(rs.getDate("refund_date"));
				dto.setUodRFReason(rs.getNString("refund_status"));
				list.add(dto);
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		} catch (Exception e) {
			System.out.println("> MPOrderDeliveryDAOImpl_selectUOrder() Exception");
		}
		return list;

	}//selectUOrder

	@Override
	public List<MPODOrderDTO> selectUDetailOrder(Connection conn, String oId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT order_id, order_date, pro_displ_src, brand_name, pro_displ_name, pro_name, product_cnt, order_status, pro_price, total_price, refund_date, refund_status "
				+ "FROM ( "
				+ "    SELECT "
				+ "        o.order_id, "
				+ "        order_date, "
				+ "        pro_displ_src, "
				+ "        brand_name, "
				+ "        pro_displ_name, "
				+ "        pro_name, "
				+ "        product_cnt, "
				+ "        order_status, "
				+ "        pro_price, "
				+ "        total_price, "
				+ "        refund_date, "
				+ "        refund_status, "
				+ "        ROW_NUMBER() OVER (PARTITION BY pro_name ORDER BY rownum) AS rn "
				+ "    FROM o_order o "
				+ "    LEFT JOIN order_product op ON o.order_id = op.order_id "
				+ "    LEFT JOIN product p ON op.product_id = p.pro_id "
				+ "    LEFT JOIN ( "
				+ "        SELECT pd.pro_displ_id, pro_displ_name, brand_name, pro_displ_src "
				+ "        FROM product_display pd "
				+ "        LEFT JOIN pro_displ_img img ON pd.pro_displ_id = img.pro_displ_id "
				+ "        LEFT JOIN brand b ON pd.brand_id = b.brand_id "
				+ "    ) pd ON p.pro_displ_id = pd.pro_displ_id "
				+ "    LEFT JOIN refund r ON o.order_id = r.order_id "
				+ "    left join payment pm on o.order_id = pm.order_id "
				+ "    where o.order_id = ? "
				+ ") subquery "
				+ "WHERE rn = 1 ";
		ArrayList<MPODOrderDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, oId);
			rs = pstmt.executeQuery();
			MPODOrderDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<MPODOrderDTO>();
			
			do {
				dto = new MPODOrderDTO();
				dto.setUodDate(rs.getDate("order_date"));
				dto.setUodOrderId(rs.getString("order_id"));
				dto.setUodDisplsrc(rs.getString("pro_displ_src"));
				dto.setUodBrand(rs.getString("brand_name"));
				dto.setUodDisplN(rs.getString("pro_displ_name"));
				dto.setUodProN(rs.getString("pro_name"));
				dto.setUodamount(rs.getInt("product_cnt"));
				dto.setUodorderPrice(rs.getInt("total_price"));
				dto.setUodProPrice(rs.getInt("pro_price"));
				dto.setUodState(rs.getString("order_status"));
				dto.setUodRFdate(rs.getDate("refund_date"));
				dto.setUodRFReason(rs.getNString("refund_status"));
				list.add(dto);
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		} catch (Exception e) {
			System.out.println("> MPOrderDeliveryDAOImpl_selectUOrder() Exception");
		}
		return list;
	}//selectUDetailOrder

	@Override
	public List<MPODdeliveryDTO> selectUODelivery(Connection conn, String oId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT deli_recipient, d.delivery_id , deli_tel, deli_tel2, deli_zip, deli_road_addr, deli_addr, deli_baddr, o.delivery_msg "
				+ " FROM delivery d left join o_user u on d.user_id = u.user_id "
				+ "                 left join o_order o on d.user_id = o.user_id "
				+ " where order_id = ? ";
		ArrayList<MPODdeliveryDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, oId);
			rs = pstmt.executeQuery();
			MPODdeliveryDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<MPODdeliveryDTO>();
			
			do {
				dto = new MPODdeliveryDTO();
				dto.setUodRecip(rs.getString("deli_recipient"));
				dto.setUodTel1(rs.getString("deli_tel"));
				dto.setUodTel2(rs.getString("deli_tel2"));
				dto.setUodZip(rs.getString("deli_zip"));
				dto.setUodRAddr(rs.getString("deli_road_addr"));
				dto.setUodAddr(rs.getString("deli_addr"));
				dto.setUodBAddr(rs.getString("deli_baddr"));
				dto.setUodMsg(rs.getString("o.delivery_msg"));
				list.add(dto);
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		} catch (Exception e) {
			System.out.println("> MPOrderDeliveryDAOImpl_selectUODelivery() Exception");
		}
		return list;
	}//selectUODelivery

	@Override
	public List<MPODpaymentDTO> selectUOPayment(Connection conn, String oId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT total_price + delivery_price as order_price, total_price, delivery_price, cd_price, point_price, pay_price, pay_type, card_type, inst_type, pay_date, refund_date, refund_price "
				+ " FROM payment p left join refund r on p.pay_id = r.pay_id "
				+ "                left join o_order o on p.order_id = o.order_id "
				+ " where p.order_id = ? ";
		ArrayList<MPODpaymentDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, oId);
			rs = pstmt.executeQuery();
			MPODpaymentDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<MPODpaymentDTO>();
			
			do {
				dto = new MPODpaymentDTO();
				dto.setUodOrderPrice(rs.getInt("order_price"));
				dto.setUodProPrice(rs.getInt("total_price"));
				dto.setUodDeliPrice(rs.getInt("delivery_price"));
				dto.setUodCouponPrice(rs.getInt("cd_price"));
				dto.setUodEtcPrice(rs.getInt("point_price"));
				dto.setUodPayPrice(rs.getInt("pay_price"));
				dto.setUodPayType(rs.getString("pay_type"));
				dto.setUodCardType(rs.getString("card_type"));
				dto.setUodInstType(rs.getString("inst_type"));
				dto.setUodPayDate(rs.getDate("pay_date"));
				dto.setUodRFPayDate(rs.getDate("refund_date"));
				dto.setUodRFPrice(rs.getInt("refund_price"));
				list.add(dto);
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		} catch (Exception e) {
			System.out.println("> MPOrderDeliveryDAOImpl_selectUOPayment() Exception");
		}
		return list;		
		
	}//selectUOPayment

	
	//매개변수 회원id, 시작일(YYYYMMDD), 종료일(YYYYMMDD), 구매유형
	@Override
	public List<MPODOrderDTO> searchUOrder(Connection conn, String uId, int start, int end, String type)
			throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT order_id, order_date, pro_displ_src, brand_name, pro_displ_name, pro_name, product_cnt, order_status, total_price, refund_date, refund_status "
				+ "FROM ( "
				+ "    SELECT "
				+ "        o.order_id, "
				+ "        order_date, "
				+ "        pro_displ_src, "
				+ "        brand_name, "
				+ "        pro_displ_name, "
				+ "        pro_name, "
				+ "        product_cnt, "
				+ "        order_status, "
				+ "        total_price, "
				+ "        refund_date, "
				+ "        refund_status, "
				+ "        ROW_NUMBER() OVER (PARTITION BY p.pro_id ORDER BY rownum) AS rn "
				+ "    FROM o_order o "
				+ "    LEFT JOIN order_product op ON o.order_id = op.order_id "
				+ "    LEFT JOIN product p ON op.product_id = p.pro_id "
				+ "    LEFT JOIN ( "
				+ "        SELECT pd.pro_displ_id, pro_displ_name, brand_name, pro_displ_src "
				+ "        FROM product_display pd "
				+ "        LEFT JOIN pro_displ_img img ON pd.pro_displ_id = img.pro_displ_id "
				+ "        LEFT JOIN brand b ON pd.brand_id = b.brand_id "
				+ "    ) pd ON p.pro_displ_id = pd.pro_displ_id "
				+ "    LEFT JOIN refund r ON o.order_id = r.order_id "
				+ "    left join payment pm on o.order_id = pm.order_id "
				+ "    where user_id = ? "
				+ "        and order_date between to_date( ? ,'YYYY-MM-DD' ) and to_date( ? , 'YYYY-MM-DD') "
				+ "        and order_type = ? "
				+ ") subquery "
				+ "WHERE rn = 1  ";
		
		ArrayList<MPODOrderDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			pstmt.setString(4, type);
			
			rs = pstmt.executeQuery();
			MPODOrderDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<MPODOrderDTO>();
			
			do {
				dto = new MPODOrderDTO();
				dto.setUodDate(rs.getDate("order_date"));
				dto.setUodOrderId(rs.getString("order_id"));
				dto.setUodDisplsrc(rs.getString("pro_displ_src"));
				dto.setUodBrand(rs.getString("brand_name"));
				dto.setUodDisplN(rs.getString("pro_displ_name"));
				dto.setUodProN(rs.getString("pro_name"));
				dto.setUodamount(rs.getInt("product_cnt"));
				dto.setUodorderPrice(rs.getInt("total_price"));
				dto.setUodState(rs.getString("order_status"));
				dto.setUodRFdate(rs.getDate("refund_date"));
				dto.setUodRFReason(rs.getNString("refund_status"));
				list.add(dto);
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		} catch (Exception e) {
			System.out.println("> MPOrderDeliveryDAOImpl_selectUOrder() Exception");
		}
		
		return list;
	}

}
