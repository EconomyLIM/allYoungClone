package productDetail.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.util.JDBCUtil;

import productDetail.domain.AllCateDTO;
import productDetail.domain.CateLDTO;
import productDetail.domain.CateMDTO;
import productDetail.domain.CateSDTO;
import productDetail.domain.ProDisplImgDTO;
import productDetail.domain.ProductInfo;
import productDetail.domain.ProductPromo;

public class ProDetailDAOImpl implements ProDetailDAO{
	
	// 싱글톤
	private ProDetailDAOImpl() {}
	private static ProDetailDAOImpl instance = new ProDetailDAOImpl();
	public static ProDetailDAOImpl getInstance() {
		return instance;
	} // getInstance
	
	//=========================== 현재 상품의 카테고리 갖고오기 =========================================
		@Override
		public AllCateDTO allCate(Connection conn, String displId) throws Exception {
			String sql = " SELECT DISTINCT "
					+ " ch.cat_h_id "
					+ " , cl.cat_l_id, cl.cat_l_name "
					+ " , cm.cat_m_id, cm.cat_m_name "
					+ " , cs.cat_s_id, cs.cat_s_name "
					+ " FROM product_display pd "
					+ " JOIN product p ON pd.pro_displ_id = p.pro_displ_id "
					+ " JOIN cate_s cs ON p.cat_s_id = cs.cat_s_id "
					+ " JOIN cate_m cm ON cs.cat_m_id = cm.cat_m_id "
					+ " JOIN cate_l cl ON cm.cat_l_id = cl.cat_l_id "
					+ " JOIN cate_h ch ON cl.cat_h_id = ch.cat_h_id "
					+ " where pd.pro_displ_id = ? ";
			
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			AllCateDTO allCateDTO = null;
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, displId);
				rs = pstmt.executeQuery();
				
				if (rs.next()) {
					
					
					do {
						
						allCateDTO = AllCateDTO.builder()
								.catHId(rs.getInt("cat_h_id"))
								.catLId(rs.getString("cat_l_id"))
								.catLName(rs.getNString("cat_l_name"))
								.catMId(rs.getString("cat_m_id"))
								.catMName(rs.getString("cat_m_name"))
								.catSId(rs.getString("cat_s_id"))
								.catSName(rs.getString("cat_s_name"))
								.build();
						
					} while (rs.next());
				} //if
			} catch (SQLException e) {
				System.out.println(">proDetailDAOImpl allCate SQLException");
				e.printStackTrace();
			} catch (Exception e) {
				System.out.println(">proDetailDAOImpl allCate Exception");
				e.printStackTrace();
			} finally {
				JDBCUtil.close(pstmt);
				JDBCUtil.close(rs);
				JDBCUtil.close(conn);
			} //try_catch
			
			return allCateDTO;
		} //allCate


	//================================ 대분류 카테고리 List 가져오는 작업 ================================
	@Override
	public List<CateLDTO> selectCLlist(Connection conn, int hId) throws Exception {
		String sql = " SELECT cat_l_id, cat_l_name FROM cate_l "
				+ " WHERE cat_h_id = ? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		CateLDTO cateLDTO = null;
		ArrayList<CateLDTO> list = null;


		String lCateId;
		String lCateName;

		// sql실행
		try {
			list = new ArrayList<CateLDTO>();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, hId);
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

	//================================ 중위 카테고리 List 가져오는 작업 ==================================
	@Override
	public List<CateMDTO> selectCMlist(Connection conn, String lId) throws Exception {
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
			pstmt.setString(1, lId);
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

	//================================ 소분류 카테고리 List 가져오는 작업 ================================
	@Override
	public List<CateSDTO> selectCSlist(Connection conn, String mId) throws Exception {
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
			pstmt.setString(1, mId); 
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

	
	//================================ 선택한 상품 정보 보여주는 작업=====================================
	@Override
	public List<ProductInfo> productInfo(Connection conn, String pid) throws Exception {
		String sql = " SELECT  pro_displ_id, pro_displ_name, brand_id, brand_name, pro_id, pro_name, cat_s_id, pro_price "
				+ ", lowprice, afterprice, prg, prc, prd, prp, stock "
				+ " FROM proDetail "
				+ " WHERE pro_displ_id = ? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductInfo productInfo = null;
		ArrayList<ProductInfo> list = null;
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pid);
			rs = pstmt.executeQuery();
			System.out.println(">>ProDetailDAOImpl productInfo...");
			if (rs.next()) {
				list = new ArrayList<>();
				
				do {
					
					productInfo = ProductInfo.builder()
							.displId(rs.getString("pro_displ_id"))
							.displName(rs.getString("pro_displ_name"))
							.brandId(rs.getString("brand_id"))
							.brandName(rs.getString("brand_name"))
							.proId(rs.getString("pro_id"))
							.proName(rs.getString("pro_name"))
							.catSId(rs.getString("cat_s_id"))
							.proPrice(rs.getInt("pro_price"))
							.lowPrice(rs.getInt("lowprice"))
							.afterPrice(rs.getInt("afterprice"))
							.prg(rs.getInt("prg"))
							.prc(rs.getInt("prc"))
							.prd(rs.getInt("prd"))
							.prp(rs.getInt("prp"))
							.stock(rs.getInt("stock"))
							.build();
					
					list.add(productInfo);
				} while (rs.next()); // while
				
			} // if
			
		} catch (SQLException e) {
			System.out.println(">proDetailDAOImpl productInfo SQLException");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">proDetailDAOImpl productInfo Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		} //try_catch
		
		
		return list;
	} // productInfo


	//================================ 선택한 상품의 프로모션을 갖고오는 작업===============================
	@Override
	public ProductPromo productPromo(Connection conn, String displId) throws Exception {
		String sql = " SELECT "
				+ " prpr.prom_d_id, prd.promo_d_s, prd.promo_d_e, prd.promo_d_discount "
				+ " , prpr.prom_c_id, prc.promo_c_name, prc.promo_c_s, prc.promo_c_e "
				+ " , NVL(CASE  "
				+ "        WHEN prc.promo_c_kind = 1 THEN prc.promo_c_discount "
				+ "        WHEN prc.promo_c_kind = 2 THEN p.pro_price * prc.promo_c_discount "
				+ "        ELSE p.pro_price "
				+ "        END  "
				+ " , 0) CPDIS "
				+ " FROM product_display pd "
				+ " JOIN product p ON pd.pro_displ_id = p.pro_displ_id "
				+ " LEFT JOIN pro_prom prpr ON pd.pro_displ_id = prpr.pro_displ_id "
				+ " LEFT JOIN prom_c prc ON prpr.prom_c_id = prc.prom_c_id "
				+ " LEFT JOIN prom_d prd ON prpr.prom_d_id = prd.prom_d_id "
				+ " where pd.pro_displ_id = ? ";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductPromo productPromo = null;
		SimpleDateFormat sdf= new SimpleDateFormat("yy.MM.dd");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, displId);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				System.out.println(">> ProDetailDAOImpl productPromo ... ");
				productPromo = ProductPromo.builder()
						.promoDId(rs.getString("prom_d_id"))
						.promoDS(rs.getDate("promo_d_s") != null ? sdf.format(new Date( rs.getDate("promo_d_s").getTime())) : null )
						.promoDE(rs.getDate("promo_d_e") != null ? sdf.format(new Date( rs.getDate("promo_d_e").getTime())) : null )
						.promoDdis(rs.getInt("promo_d_discount"))
						.promoCId(rs.getString("prom_c_id"))
						.promoCName(rs.getString("promo_c_name"))
						.promoCS(rs.getDate("promo_c_s") != null ? sdf.format(new Date( rs.getDate("promo_c_s").getTime())) : null)
						.promoCE(rs.getDate("promo_c_e") != null ? sdf.format(new Date( rs.getDate("promo_c_e").getTime())) : null)
						.cpdis(rs.getInt("CPDIS"))
						.build();
				
			} //if 
			
		} catch (SQLException e) {
			System.out.println(">proDetailDAOImpl productPromo SQLException");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">proDetailDAOImpl productPromo Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		} //try_catch
		
		
		return productPromo;
	} // productPromo

	//================================ 선택한 상품의 이미지들을 갖고오는 작업===============================
	@Override
	public List<ProDisplImgDTO> productImgs(Connection conn, String displId) throws Exception {
		String sql = " SELECT pro_displ_img, pro_displ_id, pro_displ_src FROM pro_displ_img "
				+ " WHERE pro_displ_id = ? "; 
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProDisplImgDTO proDisplImgDTO = null;
		List<ProDisplImgDTO> list = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, displId);
			rs = pstmt.executeQuery();
			System.out.println(">>ProDetailDAOImpl productImgs...");
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					
					proDisplImgDTO = ProDisplImgDTO.builder()
							.proDImgId(rs.getString("pro_displ_img"))
							.proDlId(rs.getString("pro_displ_id"))
							.proDImgSrc(rs.getString("pro_displ_src"))
							.build();
					
					list.add(proDisplImgDTO);
					
				} while (rs.next());
			} //if
			
		} catch (SQLException e) {
			System.out.println(">proDetailDAOImpl productImgs SQLException");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println(">proDetailDAOImpl productImgs Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		} //try_catch
		return list;
	} // productImgs

	

	
} // class
