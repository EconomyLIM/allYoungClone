package productDetail.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

import product.domain.PlowcateDTO;
import productDetail.domain.CateLDTO;
import productDetail.domain.CateMDTO;
import productDetail.domain.CateSDTO;
import productDetail.domain.ProductInfo;

public class proDetailDAOImpl implements proDetailDAO{

	//================================상위 카테고리 List 가져오는 작업 =====================================
	@Override
	public List<CateLDTO> selectCLlist(Connection conn, String id) throws Exception {
		String sql = " SELECT cat_l_id, cat_l_name FROM cate_l ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		CateLDTO cateLDTO = null;
		ArrayList<CateLDTO> list = null;

		// 중분류 번호에 따라 가져오는 대분류 카테고리 분기
		if (Integer.parseInt(id) <= 58) {
			sql += " WHERE cat_l_id <= 12 ";
		} else if(  59 <= Integer.parseInt(id) && Integer.parseInt(id) <= 78) {
			sql += " WHERE 13 <= cat_l_id AND cat_l_id <= 16 ";
		} else {
			sql += " WHERE 17 < cate_l_id ";
		} // if else

		String lCateId;
		String lCateName;

		// sql실행
		try {
			list = new ArrayList<CateLDTO>();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				do {
					lCateId = rs.getString("cat_l_id");
					lCateName = rs.getString("cat_l_name");
					cateLDTO = new CateLDTO(lCateId, lCateName);
					list.add(cateLDTO);
				} while ( rs.next() ); // while
			} // if
		} catch (SQLException e) {
			System.out.println(">proDetailDAOImpl selectCLlist SQLException");
			e.printStackTrace();
		} catch (NullPointerException e) {
			System.out.println(">proDetailDAOImpl selectCLlist NullPointerException");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">proDetailDAOImpl selectCLlist Exception");
			e.printStackTrace();
		} finally {

			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		} // try_catch_finally

		return list;
	} // selectCLlist

	//================================중위 카테고리 List 가져오는 작업 =====================================
	@Override
	public List<CateMDTO> selectCMlist(Connection conn, String id) throws Exception {
		String sql = " SELECT cat_m_id, cat_m_name FROM cate_m "
				+ " WHERE cat_l_id = ? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		CateMDTO cateMDTO = null;
		ArrayList<CateMDTO> list = null;
		
		String mCateId;
		String mCateName;
		
		try {

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				list = new ArrayList<>();
				do {

					mCateId = rs.getString("cat_m_id");
					mCateName = rs.getString("cat_m_name");
					
					cateMDTO = new CateMDTO(mCateId, mCateName);

					list.add(cateMDTO);

				} while (rs.next());

			} //if

		} catch (SQLException e) {
			System.out.println(">proDetailDAOImpl selectCMlist SQLException");
			e.printStackTrace();
		} catch (NullPointerException e) {
			System.out.println(">proDetailDAOImpl selectCMlist NullPointerException");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">proDetailDAOImpl selectCMlist Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		} // try catch finally
		
		
		
		return list;
	} // selectCMlist

	//================================하위 카테고리 List 가져오는 작업 =====================================
	@Override
	public List<CateSDTO> selectCSlist(Connection conn, String id) throws Exception {
		String sql = " SELECT cat_s_id, cat_s_name FROM cate_s "
				+ " WHERE cat_m_id = ? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		CateSDTO cateSDTO = null;
		ArrayList<CateSDTO> list = null;
		
		String sCateId;
		String sCateName;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id); // 나중에 매개변수로 받은 후 작업
			rs = pstmt.executeQuery();

			if (rs.next()) {
				list = new ArrayList<>();
				do {

					sCateId = rs.getString("cat_s_id");
					sCateName = rs.getString("cat_s_name");
					cateSDTO = new CateSDTO(sCateId, sCateName);

					list.add(cateSDTO);

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
	} // selectCSlist

	
	//================================선택한 상품 정보 보여주는 작업=====================================
	@Override
	public ProductInfo productInfo(Connection conn, String pid) throws Exception {
		
		
		return null;
	} // selectproductInfo

	
} // class
