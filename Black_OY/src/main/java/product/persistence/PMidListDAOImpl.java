package product.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.util.JDBCUtil;

import product.domain.MidCateDTO;
import product.domain.MnameIdDTO;
import product.domain.PCurNameDTO;
import product.domain.PMidListDTO;
import product.domain.PbrandListDTO;
import product.domain.PlowcateDTO;
import product.domain.TopCateDTO;

public class PMidListDAOImpl  implements PMidListDAO{

	// 싱글톤
	private PMidListDAOImpl() {}
	private static PMidListDAOImpl instance = new PMidListDAOImpl();
	public static PMidListDAOImpl getInstance() {
		return instance;
	} // getInstance

	//
	@Override
	public List<PlowcateDTO> selectLowCate(Connection conn, String mId) throws Exception {
		String sql = " SELECT cat_s_id, cat_s_name FROM cate_s "
				+ " WHERE cat_m_id = ? ";

		ArrayList<PlowcateDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PlowcateDTO plowcateDTO = null;
		String sId;
		String plowcate;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId); // 나중에 매개변수로 받은 후 작업
			rs = pstmt.executeQuery();

			if (rs.next()) {
				list = new ArrayList<>();
				do {

					sId = rs.getString("cat_s_id");
					plowcate = rs.getString("cat_s_name");
					plowcateDTO = new PlowcateDTO(sId, plowcate);

					list.add(plowcateDTO);

				} while ( rs.next() );

			} // if

		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("> PMidListDAOImpl_selectLowCate SQLException");
		} catch (Exception e) {
			System.out.println("> PMidListDAOImpl_selectLowCate Exception");
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}// try_catch

		return list;

	} // selectLowCate


	//================================brand List 가져오는 작업 =====================================
	@Override
	public List<PbrandListDTO> selectBrand(Connection conn, String mId) throws Exception {
		String sql = " SELECT DISTINCT b.brand_id, brand_name "
				+ " FROM brand b "
				+ " JOIN product_display pd ON b.brand_id = pd.brand_id "
				+ " JOIN product p ON pd.pro_displ_id = p.pro_displ_id "
				+ " JOIN cate_s cs ON p.cat_s_id = cs.cat_s_id "
				+ " JOIN cate_m cm ON cm.cat_m_id = cs.cat_m_id "
				+ " WHERE cs.cat_m_id = ? ";

		ArrayList<PbrandListDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PbrandListDTO pbrandListDTO;

		String brandId;
		String brandName;

		try {

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId); 
			rs = pstmt.executeQuery();
			if (rs.next()) {
				list = new ArrayList<>();

				do {
					brandId = rs.getString("brand_id").trim();
					brandName = rs.getString("brand_name");

					pbrandListDTO = new PbrandListDTO(brandId,brandName);

					list.add(pbrandListDTO);

				} while (rs.next());

			} // if

		} catch (SQLException e) {
			System.out.println("> PMidListDAOImpl_selectBrand SQLException...");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("> PMidListDAOImpl_selectBrand Exception...");
			e.printStackTrace();
		} finally{

			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);

		}// try_catch

		return list;

	} // selectBrand

	//================================product List 가져오는 작업(정렬기능 완료) =====================================
	/*
	@Override
	public List<PMidListDTO> selectMProList(Connection conn, String mId, String sort) throws Exception {
		String sql = " SELECT pro_displ_src, brand_name, pro_displ_name "
				+ " , cat_l_id, cat_m_id, cat_s_id "
				+ " , pro_price, afterprice "
				+ " , pro_displ_id, pro_id "
				+ " , prc, pdc, pmp, stock "
				+ " , ordercnt, pro_displ_like, pro_reg "
				+ " FROM pmlistview WHERE cat_m_id = ? ";

		// 초기 설정
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PMidListDTO pmidlistdto = null;
		ArrayList<PMidListDTO> list = null;

		// sql실행후 받을 값 저장할 변수 저장
		String displImgSrc; // 이미지 소스
		String brandName; // 브랜드 
		String displProName; // 상품표시 이름
		String lId; // 대분류
		String midId; // 중분류
		String sId; // 소분류
		String proPrice; // 가격
		String afterPrice; // 할인후 가격
		String displId; // 상품 표시 id
		String productID; // 상품 id -> 나중에 파라미터값으로 넘겨 상품 상세 페이지로 이동할 값
		int prc; // 프로모션_쿠폰 (0이면 안하고 1이면 하는중)
		int pdc; // 프로모션_할인 (0이면 안하고 1이면 하는중)
		int pmp; // 프로모션_증정 (0이면 안하고 1이면 하는중)
		int stock; // 오늘드림 매장 재고 (있으면 0 없으면 1)
		int displLike; // 좋아요 수
		int ordercnt; // 주문수
		Date proReg; // 등록일

		int value = Integer.parseInt(sort);

		switch (value) {
		case 1:
			sql += " ORDER BY pro_displ_like desc ";
			break;
		case 2:
			sql += " ORDER BY pro_reg desc ";
			break;
		case 3:
			sql += " ORDER BY ordercnt desc ";
			break;
		case 4:
			sql += " ORDER BY afterprice asc ";
			break;
		case 5:
			sql += " ORDER BY (pro_price-afterprice)/pro_price*100 desc ";
			break;
		} // switch

		try {

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				list = new ArrayList<>();
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
					pmp = rs.getInt("pmp");
					stock = rs.getInt("stock");
					displLike = rs.getInt("pro_displ_like");
					ordercnt = rs.getInt("ordercnt");
					proReg = rs.getDate("pro_reg");

					pmidlistdto = new PMidListDTO(displImgSrc, brandName, displProName, lId, midId, sId, proPrice, afterPrice, displId, productID, prc, pdc, pmp, stock, displLike, ordercnt, proReg);

					list.add(pmidlistdto);

				} while (rs.next());

			} //if

		} catch (SQLException e) {
			System.out.println(">PMidListDAOImpl_selectMProList SQLException");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">PMidListDAOImpl_selectMProList Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		} //try_catch

		return list;
	} // selectProList
	 */
	//================================product List 가져오는 작업(정렬기능 완료) + 페이징 처리 =====================================
	@Override
	public List<PMidListDTO> selectMProList(Connection conn, int group, String Id, String sort, String brands[], int currentPage, int numberPerPage) throws Exception {
		int begin = (currentPage -1) * numberPerPage + 1;
		int end = begin + numberPerPage -1 ;

		String sql = " SELECT * "
				+ "    FROM ( "
				+ "        SELECT ROWNUM no, t.* "
				+ "            FROM( "
				+ "                select * from pmlistview ";

		if (group == 1) {
			sql += "WHERE cat_l_id = ? ";
		} else if (group == 2){
			sql += "WHERE cat_m_id = ? ";
		} else if(group == 3) {
			sql += "WHERE cat_s_id = ? ";
		} //if_else

		if (brands != null) {
			sql += " AND brand_id = ";
			for (int i = 0; i < brands.length; i++) {
				if (i==0) {
					sql += " ? ";
				} else {
					sql += " OR brand_id = ? " ;
				} //if else
			} //for
		} //if

		int value = Integer.parseInt(sort);
		switch (value) {
		case 1:
			sql += " ORDER BY pro_displ_like desc ";
			break;
		case 2:
			sql += " ORDER BY pro_reg desc ";
			break;
		case 3:
			sql += " ORDER BY ordercnt desc ";
			break;
		case 4:
			sql += " ORDER BY afterprice asc ";
			break;
		case 5:
			sql += " ORDER BY (proprice-afterprice)/proprice*100 desc ";
			break;
		} // switch
		sql +=  " ) t "
				+ "        ) b "
				+ " WHERE b.no BETWEEN ? AND ?";
		// 초기 설정
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PMidListDTO pmidlistdto = null;
		ArrayList<PMidListDTO> list = null;

		// sql실행후 받을 값 저장할 변수 저장
		String displImgSrc; // 이미지 소스
		String brandName; // 브랜드 
		String brandId = null;
		String displProName; // 상품표시 이름
		String lId; // 대분류
		String midId; // 중분류
		String sId; // 소분류
		String proPrice; // 가격
		String afterPrice; // 할인후 가격
		String displId; // 상품 표시 id
		String productID; // 상품 id -> 나중에 파라미터값으로 넘겨 상품 상세 페이지로 이동할 값
		int prc; // 프로모션_쿠폰 (0이면 안하고 1이면 하는중)
		int pdc; // 프로모션_할인 (0이면 안하고 1이면 하는중)
		int pmp; // 프로모션_증정 (0이면 안하고 1이면 하는중)
		int stock; // 오늘드림 매장 재고 (있으면 0 없으면 1)
		int displLike; // 좋아요 수
		int ordercnt; // 주문수
		Date proReg; // 등록일

		int temp =2;
		System.out.println(sql);
		try {

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, Id);
			if (brands != null) {
				for (int i = 0; i < brands.length; i++) {
					pstmt.setString(i+2, brands[i]);
					temp++;
				} // for
				pstmt.setInt(temp, begin);
				pstmt.setInt(temp+1, end);
			}else {
				pstmt.setInt(2, begin);
				pstmt.setInt(3, end);
			}

			rs = pstmt.executeQuery();

			if(rs.next()) {
				list = new ArrayList<>();
				do {

					displImgSrc = rs.getString("pro_displ_src");
					brandName = rs.getString("brand_name");
					brandId = rs.getString("brand_id");
					displProName = rs.getString("pro_displ_name");
					lId = rs.getString("cat_l_id");
					midId = rs.getString("cat_m_id");
					sId = rs.getString("cat_s_id");
					proPrice = rs.getString("proprice");
					afterPrice = rs.getString("afterprice");
					displId = rs.getString("pro_displ_id");
					productID = rs.getString("pro_id");
					prc = Integer.parseInt(rs.getString("prc"));
					pdc = Integer.parseInt(rs.getString("pdc"));
					pmp = rs.getInt("pmp");
					stock = rs.getInt("stock");
					displLike = rs.getInt("pro_displ_like");
					ordercnt = rs.getInt("ordercnt");
					proReg = rs.getDate("pro_reg");

					pmidlistdto = new PMidListDTO(displImgSrc, brandId, brandName, displProName, lId, midId, sId, proPrice, afterPrice, displId, productID, prc, pdc, pmp, stock, displLike, ordercnt, proReg);

					list.add(pmidlistdto);

				} while (rs.next());

			} //if

		} catch (SQLException e) {
			System.out.println(">PMidListDAOImpl_selectMProList SQLException");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">PMidListDAOImpl_selectMProList Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		} //try_catch

		return list;
	} // selectProList

	//================================상위 카테고리 List 가져오는 작업 =====================================
	@Override
	public List<TopCateDTO> selectTop(Connection conn, String id) throws Exception {
		String sql = " SELECT cat_l_id, cat_l_name FROM cate_l ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		TopCateDTO topcatedto = null;
		ArrayList<TopCateDTO> list = null;

		String lCateId;
		String lCateName;

		// 중분류 번호에 따라 가져오는 대분류 카테고리 분기
		if (Integer.parseInt(id) <= 58) {
			sql += " WHERE cat_l_id <= 12 ";
		} else if(  59 <= Integer.parseInt(id) && Integer.parseInt(id) <= 78) {
			sql += " WHERE 13 <= cat_l_id AND cat_l_id <= 16 ";
		} else {
			sql += " WHERE 17 < cate_l_id ";
		} // if else

		// sql실행
		try {
			list = new ArrayList<TopCateDTO>();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {

				do {

					lCateId = rs.getString("cat_l_id");
					lCateName = rs.getString("cat_l_name");

					topcatedto = new TopCateDTO(lCateId, lCateName);

					list.add(topcatedto);

				} while ( rs.next() ); // while

			} // if

		} catch (SQLException e) {
			System.out.println(">PMidListDAOImpl selectTop SQLException");
			e.printStackTrace();
		} catch (NullPointerException e) {
			System.out.println(">PMidListDAOImpl selectTop NullPointerException");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">PMidListDAOImpl selectTop Exception");
			e.printStackTrace();
		} finally {

			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}

		return list;

	} // selectTop

	//================================중위 카테고리 List 가져오는 작업 =====================================
	@Override
	public List<MidCateDTO> selectMid(Connection conn, String id) throws Exception {
		String sql = " SELECT cat_m_id, cat_m_name FROM cate_m "
				+ " WHERE cat_l_id = ? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MidCateDTO midcatedto = null;
		ArrayList<MidCateDTO> list = null;

		String mId;
		String mName;

		try {

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				list = new ArrayList<>();
				do {

					mId = rs.getString("cat_m_id");
					mName = rs.getString("cat_m_name");
					midcatedto = new MidCateDTO(mId, mName);

					list.add(midcatedto);

				} while (rs.next());

			} //if

		} catch (SQLException e) {
			System.out.println(">PMidListDAOImpl selectMid SQLException");
			e.printStackTrace();
		} catch (NullPointerException e) {
			System.out.println(">PMidListDAOImpl selectMid NullPointerException");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">PMidListDAOImpl selectMid Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		} // try catch finally

		return list;
	} // selectMid


	//================================ 상단 카테고리 작업 =====================================



	//================================ 총 레코드 수 구하기 =====================================
	@Override
	public int getTotalRecords(Connection conn, int group, String mId) throws SQLException {

		int totalRecords = 0;

		String sql = "SELECT COUNT(*) "
				+ " FROM pmlistview ";

		if (group == 1) {
			sql += " WHERE cat_l_id = ? ";
		} else if(group ==2) {
			sql += " WHERE cat_m_id = ? ";
		} else if(group == 3) {
			sql += " WHERE cat_s_id = ? ";
		}//if else

		PreparedStatement pstmt = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, mId);
		ResultSet rs =  pstmt.executeQuery();

		if( rs.next() )  totalRecords = rs.getInt(1);

		JDBCUtil.close(pstmt);
		JDBCUtil.close(rs);
		JDBCUtil.close(conn);

		return totalRecords;

	} // getTotalRecords
	
	// 총 레코드 수 구하기 (브랜드 추가)
	@Override
	public int getTotalRecords(Connection conn, int group, String mId, String[] brands) throws SQLException {
		int totalRecords = 0;

		String sql = "SELECT COUNT(*) "
				+ " FROM pmlistview ";

		if (group == 1) {
			sql += " WHERE cat_l_id = ? ";
		} else if(group ==2) {
			sql += " WHERE cat_m_id = ? ";
		} else if(group == 3) {
			sql += " WHERE cat_s_id = ? ";
		}//if else
		
		if (brands != null) {
			sql += " AND brand_id = ";
			for (int i = 0; i < brands.length; i++) {
				if (i==0) {
					sql += " ? ";
				} else {
					sql += " OR brand_id = ? " ;
				} //if else
			} //for
		} //if

		PreparedStatement pstmt = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, mId);
		
		if (brands != null) {
			for (int i = 0; i < brands.length; i++) {
				pstmt.setString(i+2, brands[i]);
			} // for
		} // if
		
		ResultSet rs =  pstmt.executeQuery();

		if( rs.next() )  totalRecords = rs.getInt(1);

		JDBCUtil.close(pstmt);
		JDBCUtil.close(rs);
		JDBCUtil.close(conn);

		return totalRecords;
		
		
	} // getTotalRecords

	//================================ 총 페이지 구하기 =====================================

	@Override
	public int getTotalPages(Connection conn,int group, int numberPerPage, String mId) throws SQLException {
		int totalPages = 0;

		String sql = "SELECT CEIL( COUNT(*)/ ? ) " 
				+ " FROM pmlistview ";

		if (group == 1) {
			sql += " WHERE cat_l_id = ? ";
		} else if(group ==2) {
			sql += " WHERE cat_m_id = ? ";
		} else if(group == 3) {
			sql += " WHERE cat_s_id = ? ";
		}//if else

		PreparedStatement pstmt = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, numberPerPage);		
		pstmt.setString(2, mId);		
		
		ResultSet rs =  pstmt.executeQuery();

		if( rs.next() )  totalPages = rs.getInt(1);

		JDBCUtil.close(pstmt);
		JDBCUtil.close(rs);
		JDBCUtil.close(conn);

		return totalPages;
	} // getTotalPages
	
	// 총 페이지 구하기 (브랜드 추가 작업 완료)
	@Override
	public int getTotalPages(Connection conn, int group, int numberPerPage, String mId, String[] brands)
			throws SQLException {
		int totalPages = 0;

		String sql = "SELECT CEIL( COUNT(*)/ ? ) " 
				+ " FROM pmlistview ";

		if (group == 1) {
			sql += " WHERE cat_l_id = ? ";
		} else if(group ==2) {
			sql += " WHERE cat_m_id = ? ";
		} else if(group == 3) {
			sql += " WHERE cat_s_id = ? ";
		}//if else
		
		if (brands != null) {
			sql += " AND brand_id = ";
			for (int i = 0; i < brands.length; i++) {
				if (i==0) {
					sql += " ? ";
				} else {
					sql += " OR brand_id = ? " ;
				} //if else
			} //for
		} //if

		PreparedStatement pstmt = null;
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, numberPerPage);		
		pstmt.setString(2, mId);	
		
		if (brands != null) {
			for (int i = 0; i < brands.length; i++) {
				pstmt.setString(i+3, brands[i]);
			} // for
		} // if
		
		ResultSet rs =  pstmt.executeQuery();

		if( rs.next() )  totalPages = rs.getInt(1);
		
		JDBCUtil.close(pstmt);
		JDBCUtil.close(rs);
		JDBCUtil.close(conn);

		return totalPages;
	} // getTotalPages

	//====================== 현재 카테고리 이름과 상위 카테고리 정보 가져오기(중위페이지) =============================
	@Override
	public MnameIdDTO selectCurName(Connection conn, String mId) throws Exception {

		String sql = " SELECT cat_m_id, cat_m_name, cl.cat_l_id, cl.cat_l_name "
				+ " FROM cate_m cm "
				+ " JOIN cate_l cl ON cm.cat_l_id = cl.cat_l_id "
				+ " WHERE cat_m_id = ? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MnameIdDTO mnameIdDTO = null;

		try {

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId);
			rs = pstmt.executeQuery();

			if (rs.next()) {

				do {
					mnameIdDTO = MnameIdDTO.builder()
							.catLId(rs.getString("cat_l_id"))
							.catLName(rs.getString("cat_l_name"))
							.catMId(rs.getString("cat_m_id"))
							.catMName(rs.getString("cat_m_name"))
							.build();



				} while (rs.next());
			} //if

		} catch (SQLException e) {
			System.out.println(">PMidListDAOImpl selectCurName SQLException");
			e.printStackTrace();
		} catch (NullPointerException e) {
			System.out.println(">PMidListDAOImpl selectCurName NullPointerException");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">PMidListDAOImpl selectCurName Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		} // try catch finally

		return mnameIdDTO;
	} //selectCurName

	//====================== 현재 카테고리 이름과 상위 카테고리 정보 가져오기(중위페이지) =============================
	@Override
	public PCurNameDTO curName(Connection conn, int group, String id) throws Exception {

		String sql = "";
		String name = null;
		PCurNameDTO dto = null;
		switch (group) {
		case 1:
			sql = "SELECT cat_l_name FROM cate_l WHERE cat_l_id = ?";
			break;
		case 2:
			sql = "SELECT cat_m_name FROM cate_m WHERE cat_m_id = ?";
			break;
		case 3:
			sql = "SELECT cat_s_name FROM cate_s WHERE cat_s_id = ?";
			break;
		} // switch

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {

				switch (group) {
				case 1:
					name = rs.getString("cat_l_name");
					break;
				case 2:
					name = rs.getString("cat_m_name");
					break;
				case 3:
					name = rs.getString("cat_s_name");
					break;
				} // switch
				dto = new PCurNameDTO(name);
			} //if
		} catch (Exception e) {
			System.out.println(">PMidListDAOImpl curName Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(conn);
		} // try catch finally
		return dto;
	} // curName











} // class
