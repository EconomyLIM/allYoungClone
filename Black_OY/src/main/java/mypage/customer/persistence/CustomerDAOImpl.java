package mypage.customer.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.util.JDBCUtil;

import mypage.customer.domain.FaqDTO;
import mypage.main.domain.MpPAskDTO;
import mypage.orderDelivery.domain.MPODOrderDTO;
import store.domain.StoreTimeDTO;
import user.domain.LogOnDTO;
import user.persistence.OuserDAOImpl;

public class CustomerDAOImpl implements CustomerDAO{
	private CustomerDAOImpl() {}
	private static CustomerDAOImpl instance = new CustomerDAOImpl();
	public static CustomerDAOImpl getInstance() {
		return instance;
	}
	
	//1:1 문의 등록
	@Override
	public int insertPask(Connection conn, MpPAskDTO askDto, String user_id) throws SQLException {
		String sql = " INSERT INTO personal_ask ( pask_id, user_id, ac_id, pask_content) "
				+ "    VALUES ( 'pa_'||to_char(pask_seq.nextval, 'FM0000000') ,?, ?, ? ) ";
		PreparedStatement pstmt = null;
		int rowCount = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, user_id );
			pstmt.setString(2, askDto.getPaskcateId());
			pstmt.setString(3, askDto.getPaskQuestion());
			
			rowCount = pstmt.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("> CustomerDAOImpl_insertPask() Exception");
		}finally {
			JDBCUtil.close(pstmt);
		}
		return rowCount;
	}
	
	//1:1 문의 리스트
	@Override
	public List<MpPAskDTO> selectPAskList(Connection conn, String uId) throws Exception {
		String sql = " SELECT pask_state, pask_content, pask_date, ac_id, ac_major, ac_minor, pask_ans "
				+ " FROM personal_ask a left join ask_category c on a.ac_id=c.ac_id "
				+ " WHERE user_id = ? ";
		
		ArrayList<MpPAskDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, uId);
		rs = pstmt.executeQuery();
		MpPAskDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<MpPAskDTO>();
			
			do {
				dto = new MpPAskDTO();
				dto.setPaskState(rs.getString("pask_state"));
				dto.setPaskQuestion(rs.getString("pask_content"));
				dto.setPaskDate(rs.getDate("pask_date"));
				dto.setPaskcateId(rs.getString("ac_id"));
				dto.setPaskMa(rs.getString("ac_major"));
				dto.setPaskMi(rs.getString("ac_minor"));
				dto.setPaskAns(rs.getString("pask_ans"));
				list.add(dto);			
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("> CustomerDAOImpl_selectUserPAsk() Exception");
		}
		return list;
		
	}

	//1:1문의 > 주문/환불내역 조회
	@Override
	public List<MPODOrderDTO> selectOrderList(Connection conn, String uId) throws Exception {
		String sql = "SELECT order_id, order_date, pro_displ_name, pro_name, product_cnt, order_status, refund_status "
				+ " FROM ( "
				+ "    SELECT "
				+ "        o.order_id, order_date, pro_displ_name, pro_name, product_cnt,  order_status, refund_date, refund_status "
				+ "        , ROW_NUMBER() OVER (PARTITION BY pro_name ORDER BY rownum) AS rn "
				+ "    FROM o_order o "
				+ "   LEFT JOIN order_product op ON o.order_id = op.order_id "
				+ "    LEFT JOIN product p ON op.product_id = p.pro_id "
				+ "    LEFT JOIN ( "
				+ "       SELECT pd.pro_displ_id, pro_displ_name "
				+ "       FROM product_display pd "
				+ "       LEFT JOIN brand b ON pd.brand_id = b.brand_id "
				+ "    ) pd ON p.pro_displ_id = pd.pro_displ_id "
				+ "    LEFT JOIN refund r ON o.order_id = r.order_id "
				+ "	   LEFT JOIN payment pm ON o.order_id = pm.order_id "
				+ "    WHERE user_id = ? "
				+ ") subquery "
				+ " WHERE rn = 1 ";
		
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
				dto.setUodDisplN(rs.getString("pro_displ_name"));
				dto.setUodProN(rs.getString("pro_name"));
				dto.setUodamount(rs.getInt("product_cnt"));
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
			e.printStackTrace();
			System.out.println("> CustomerDAOImpl_selectOrderList() Exception");
		}
		return list;
	}

	@Override
	public List<String> getmajCate(Connection conn) throws Exception {
		String sql = " SELECT DISTINCT ac_major "
				+ "FROM ask_category "
				+ "WHERE NOT ac_major ='TOP10' ";

		ArrayList<String> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					list.add(rs.getString("ac_major"));
				} while (rs.next());
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("> CustomerDAOImpl_getmajCate() Exception");
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		return list;

	}

	@Override
	public List<String> getminCate(Connection conn, String ac_major) throws Exception {
		String sql = " SELECT ac_minor "
				+ "FROM ask_category "
				+ "WHERE ac_major = ? ";

		ArrayList<String> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  ac_major);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					list.add(rs.getString("ac_minor"));
				} while (rs.next());
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("> CustomerDAOImpl_getminCate() Exception");
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		return list;
	}

	@Override
	public List<FaqDTO> faqKeyword(Connection conn, String faqkeyword) throws Exception {
		ArrayList<FaqDTO> list = null;
		
		String pattern = "%" + faqkeyword + "%";
		String sql = " SELECT t.faq_title, t.fac_content "
		+ "FROM ( "
		+ "SELECT faq_title , fac_content "
		+ "FROM faq "
		+ "WHERE faq_title LIKE ? "
		+ "ORDER BY faq_title "
		+ " ) t "
		+ "WHERE ROWNUM <=2 ";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		FaqDTO dto = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pattern);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					dto = new FaqDTO();
					dto.setFaq_title(rs.getString("faq_title"));
					dto.setFac_content(rs.getString("fac_content"));
					list.add(dto);
				} while ( rs.next() );
				
			} // if
			System.out.println(list);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}// try_catch
		
		return list;
	}
}
