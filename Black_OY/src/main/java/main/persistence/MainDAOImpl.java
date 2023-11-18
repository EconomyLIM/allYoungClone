package main.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

import com.util.JDBCUtil;

import main.domain.MainUserDTO;
import main.domain.PlanShopDisplDTO;
import product.domain.PMidListDTO;


public class MainDAOImpl implements MainDAO{

	// 싱글톤
	private MainDAOImpl() {}
	private static MainDAOImpl instance = new MainDAOImpl();
	public static MainDAOImpl getInstance() {
		return instance;
	} // getInstance

	// =========================== 로그인한 사람의 정보를 갖고오는 작업 ===========================	
	@Override
	public MainUserDTO selectUserInfo(Connection conn, String userId) throws Exception {

		String sql = " SELECT u_gender, u_birth, skintone_id, skintype_id "
				+ " FROM O_USER ou "
				+ " JOIN user_profile up ON ou.user_id = up.user_id "
				+ " WHERE ou.user_id = ? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MainUserDTO mainUserDTO = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();

			if (rs.next()) {

				mainUserDTO = MainUserDTO.builder()
						.userId(userId)
						.gender(rs.getInt("u_gender"))
						.birth(rs.getDate("u_birth"))
						.skinTone(rs.getString("skintone_id"))
						.skinType(rs.getString("skintype_id"))
						.build();

				System.out.println(">> MainDAOImpl selectUserInfo...");

			} // if
		} catch (SQLException e) {
			System.out.println(">MainDAOImpl selectUserInfo SQLException<");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">MainDAOImpl selectUserInfo Exception<");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		} //try_catch

		return mainUserDTO;
	} // selectUserInfo

	// =========================== 로그인한 사람과 비슷한 정보를 갖고 있는 유저id를 갖고오는 작업 ===========================	
	@Override
	public List<String> similarUser(Connection conn, MainUserDTO mainUserDTO) throws Exception {
		String sql = " SELECT ou.user_id "
				+ " FROM O_USER ou "
				+ " JOIN user_profile up ON ou.user_id = up.user_id "
				+ " WHERE u_gender = ?  "
				+ " AND skintone_id = ? AND skintype_id = ? "
				+ " AND u_birth BETWEEN ? AND ? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<String> list = null;

		try {

			Date birth = mainUserDTO.getBirth();
			LocalDate localDate = birth.toLocalDate();

			LocalDate beforeBirth = localDate.minusYears(2);
			LocalDate afterBirth = localDate.plusYears(2);

			Date sqlBefore = Date.valueOf(beforeBirth);
			Date sqlAfter = Date.valueOf(afterBirth);

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mainUserDTO.getGender());
			pstmt.setString(2, mainUserDTO.getSkinTone());
			pstmt.setString(3, mainUserDTO.getSkinType());
			pstmt.setDate(4, sqlBefore);
			pstmt.setDate(5, sqlAfter);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<>();

				do {
					list.add(rs.getString("user_id"));
				} while (rs.next());

			} // if

		} catch (SQLException e) {
			System.out.println(">MainDAOImpl selectUserInfo SQLException<");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">MainDAOImpl selectUserInfo Exception<");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		} //try_catch

		return list;
	} // similarUser

	@Override
	public List<String> similarProduct(Connection conn, List<String> userList) throws Exception {
		String sql = " SELECT pro_displ_id, total_product_cnt FROM ( "
				+ " SELECT pd.pro_displ_id , SUM(op.product_cnt) AS total_product_cnt "
				+ "    FROM o_order oo "
				+ "    JOIN o_user ou ON oo.user_id = ou.user_id "
				+ "    JOIN order_product op ON oo.order_id = op.order_id "
				+ "    JOIN product p ON p.pro_id = op.product_id "
				+ "    JOIN product_display pd ON p.pro_displ_id = pd.pro_displ_id "
				+ "    where ou.user_id in (  ";

		for (int i = 0; i < userList.size(); i++) {

			if (i == userList.size() -1) {
				sql += " ? ";
			} else{
				sql += "?, ";
			}// if
		} // for

		sql += " ) "
				+ "    GROUP BY  pd.pro_displ_id "
				+ "    ORDER BY SUM(op.product_cnt) desc "
				+ " ) "
				+ " WHERE ROWNUM <= 32 ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<String> displList = null;

		try {
			pstmt = conn.prepareStatement(sql);
			for (int i = 0; i < userList.size() ; i++) {
				pstmt.setString(i+1, userList.get(i));
			} // for
			rs = pstmt.executeQuery();
			if (rs.next()) {
				displList = new ArrayList<>();
				do {
					displList.add(rs.getString("pro_displ_id"));
				} while (rs.next());
			} // if

			System.out.println(">> MainDAOImpl similarProduct ... ");
		} catch (SQLException e) {
			System.out.println(">MainDAOImpl similarProduct SQLException<");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">MainDAOImpl similarProduct Exception<");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		} //try_catch


		return displList;
	}

	// =========================== 갖고온 product_id 상품 표시 하는 리스트 ===========================	
	@Override
	public List<PMidListDTO> similardispl(Connection conn, List<String> displList) throws Exception {
		String sql = " SELECT * from pmlistview  "
				+ "    WHERE pro_displ_id in(  ";

		for (int i = 0; i < displList.size(); i++) {

			if (i == displList.size() -1) {
				sql += " ? ";
			} else{
				sql += "?, ";
			}// if
		} // for
		sql += " ) ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<PMidListDTO> plist = null;
		PMidListDTO dto = null;
		try {

			pstmt = conn.prepareStatement(sql);
			for (int i = 0; i < displList.size() ; i++) {
				pstmt.setString(i+1, displList.get(i));
			} // for
			rs = pstmt.executeQuery();

			if (rs.next()) {
				plist = new ArrayList<>();
				do {

					dto = PMidListDTO.builder()
							.displImgSrc(rs.getString("pro_displ_src"))
							.brandName(rs.getString("brand_name"))
							.brandId(rs.getString("brand_id"))
							.displProName(rs.getString("pro_displ_name"))
							.lId(rs.getString("cat_l_id"))
							.mId(rs.getString("cat_m_id"))
							.sId(rs.getString("cat_s_id"))
							.proPrice(rs.getString("proprice"))
							.afterPrice(rs.getString("afterprice"))
							.displId(rs.getString("pro_displ_id"))
							.productID(rs.getString("pro_id"))
							.prc(rs.getInt("prc"))
							.pdc(rs.getInt("pdc"))
							.pmp(rs.getInt("pmp"))
							.stock(rs.getInt("stock"))
							.displLike(rs.getInt("pro_displ_like"))
							.ordercnt(rs.getInt("ordercnt"))
							.proReg(rs.getDate("pro_reg"))
							.build();


					plist.add(dto);


				} while (rs.next());

				System.out.println(">> MainDAOImpl similardispl...");
			} //if

		} catch (SQLException e) {
			System.out.println(">MainDAOImpl similardispl SQLException<");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">MainDAOImpl similardispl Exception<");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		} //try_catch

		return plist;
	}

	// =========================== 갖고온 product_id 상품 표시 하는 리스트 ===========================
	@Override
	public List<String> getMidList(Connection conn, String userId) throws Exception {
		String sql = " SELECT cat_m_id FROM ( "
				+ " SELECT cat_m_id FROM user_view "
				+ " WHERE user_id = ? "
				+ " GROUP BY cat_m_id "
				+ " ORDER BY count(*) DESC "
				+ " ) "
				+ " WHERE ROWNUM <= 2 ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<String> list = null;

		try {

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				list = new ArrayList<>();
				do {
					list.add(rs.getString("cat_m_id"));
				} while (rs.next());
				System.out.println(">> MainDAOImpl getMidList");
			} //if

		} catch (SQLException e) {
			System.out.println("***>MainDAOImpl similardispl SQLException<***");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">MainDAOImpl similardispl Exception<");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		
		} //try_catch

		return list;
	} // getMidList

	// =========================== 추천 상품 갯수 가져오는 작업 ===========================
	@Override
	public int getListCount(Connection conn, List<String> cateMlist) throws Exception {
		String sql = " SELECT count(*) FROM pmlistview where cat_m_id in ( ";
		for (int i = 0; i < cateMlist.size(); i++) {
			if (i == cateMlist.size()-1 ) {
				sql += " ? ";
			} else {
				sql += " ?, ";
			} // if else
		} //for

		sql += " ) ";
		int rowCnt = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;



		try {
			pstmt = conn.prepareStatement(sql);
			for (int i = 0; i < cateMlist.size(); i++) {
				pstmt.setString(i+1, cateMlist.get(i));
			} // for

			rs = pstmt.executeQuery();

			rowCnt = rs.getInt(1);

		} catch (SQLException e) {
			System.out.println(">MainDAOImpl getListCount SQLException<");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">MainDAOImpl getListCount Exception<");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		} //try_catch
		System.out.println(">>>MainDAOImpl getListCount success");

		return rowCnt;
	} // getListCount


	// =========================== 추천 상품 표시 하는 리스트 ===========================
	@Override
	public List<PMidListDTO> recommendProduct(Connection conn, List<String> cateMlist) throws Exception {
		String sql = " SELECT * "
				+ " FROM ( "
				+ "    SELECT * "
				+ "    FROM pmlistview "
				+ " WHERE cat_m_id IN ( ";

		for (int i = 0; i < cateMlist.size(); i++) {
			if (i == cateMlist.size() -1) {
				sql += " ? ";
			} else{
				sql += "?, ";
			}// if
		} // for

		sql		+= " )   ORDER BY DBMS_RANDOM.VALUE "
				+ " ) "
				+ " WHERE ROWNUM <= 20 ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<PMidListDTO> plist = null;
		PMidListDTO dto = null;
		try {

			pstmt = conn.prepareStatement(sql);
			for (int i = 0; i < cateMlist.size() ; i++) {
				pstmt.setString(i+1, cateMlist.get(i));
			} // for
			rs = pstmt.executeQuery();

			if (rs.next()) {
				plist = new ArrayList<>();
				do {

					dto = PMidListDTO.builder()
							.displImgSrc(rs.getString("pro_displ_src"))
							.brandName(rs.getString("brand_name"))
							.brandId(rs.getString("brand_id"))
							.displProName(rs.getString("pro_displ_name"))
							.lId(rs.getString("cat_l_id"))
							.mId(rs.getString("cat_m_id"))
							.sId(rs.getString("cat_s_id"))
							.proPrice(rs.getString("proprice"))
							.afterPrice(rs.getString("afterprice"))
							.displId(rs.getString("pro_displ_id"))
							.productID(rs.getString("pro_id"))
							.prc(rs.getInt("prc"))
							.pdc(rs.getInt("pdc"))
							.pmp(rs.getInt("pmp"))
							.stock(rs.getInt("stock"))
							.displLike(rs.getInt("pro_displ_like"))
							.ordercnt(rs.getInt("ordercnt"))
							.proReg(rs.getDate("pro_reg"))
							.build();


					plist.add(dto);


				} while (rs.next());

				System.out.println(">> MainDAOImpl recommendProduct...");
			} //if

		} catch (SQLException e) {
			System.out.println(">MainDAOImpl recommendProduct SQLException<");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">MainDAOImpl recommendProduct Exception<");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		} //try_catch

		return plist;
	} // recommendProduct
	
	// =========================== 배너정보 갖고오는 작업 ===========================
	@Override
	public List<PlanShopDisplDTO> getPlanShop(Connection conn, int cate) throws Exception {
		
		String sql = " SELECT peb.pe_id, peb_img_src, peb_summ, peb_summ2, peb_keyword, pe_cate FROM peb "
				+ " JOIN pro_event pe ON pe.pe_id = peb.pe_id "
				+ " WHERE pe_e_d > SYSDATE AND pe_cate = ?";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<PlanShopDisplDTO> list = null;
		PlanShopDisplDTO dto = null;
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cate);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					
					dto = PlanShopDisplDTO.builder()
							.psId(rs.getString("pe_id"))
							.psSrc(rs.getString("peb_img_src"))
							.psSumm(rs.getString("peb_summ"))
							.psSecSumm(rs.getString("peb_summ2"))
							.pskeyword(rs.getString("peb_keyword"))
							.build();
					
					list.add(dto);
					
				} while (rs.next());
				System.out.println(" ***>>> MainDAOImpl getPlanShop <<<***");
			} // if
			
			
		} catch (SQLException e) {
			System.out.println(">MainDAOImpl getPlanShop SQLException<");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">MainDAOImpl getPlanShop Exception<");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
		} //try_catch
		
		return list;
	} // getPlanShop
	
	
	// ================ 인기 행사의 배너정보와 상품을 갖고오는 작업 ======================
	@Override
	public HashMap<List<PlanShopDisplDTO>, List<PMidListDTO>> getPopularEvent(Connection conn,
			List<PlanShopDisplDTO> list) throws Exception {
		
		
		// TODO Auto-generated method stub
		return null;
	} // getPopularEvent



} // class
