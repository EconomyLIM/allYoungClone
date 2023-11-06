package product.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.util.JDBCUtil;

import product.domain.PMidListDTO;
import product.domain.PbrandListDTO;
import product.domain.PlowcateDTO;

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
		String sql = " SELECT cat_s_name FROM cate_s "
				+ " WHERE cat_m_id = ? ";
		
		ArrayList<PlowcateDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PlowcateDTO plowcateDTO = null;
		String plowcate;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId); // 나중에 매개변수로 받은 후 작업
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList<>();
				do {
					
					plowcate = rs.getString("cat_s_name");
					plowcateDTO = new PlowcateDTO(plowcate);
					
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
			pstmt.setString(1, mId); // 나중에 매개변수로 받은 후 작업
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
			
		}// try_catch
		
		return list;
		
	} // selectBrand

//================================product List 가져오는 작업 =====================================
	@Override
	public List<PMidListDTO> selectMProList(Connection conn, String mId) throws Exception {
		String sql = " SELECT pro_displ_src, brand_name, pro_displ_name "
				+ " , cat_l_id, cat_m_id, cat_s_id "
				+ " , pro_price, afterprice "
				+ " , pro_displ_id, pro_id "
				+ " , prc, pdc, stock "
				+ " , ordercnt, pro_displ_like, pro_reg "
				+ " FROM pmlistview WHERE cat_m_id = ? ";
		
		// 초기 설정
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PMidListDTO pmidlistdto = null;
		ArrayList<PMidListDTO> list = null;
		
		// sql실행후 받을 값 저장할 변수 저장
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
		int stock;
		int displLike;
		int ordercnt;
		Date proReg;
		
		
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
					stock = rs.getInt("stock");
					displLike = rs.getInt("pro_displ_like");
					ordercnt = rs.getInt("ordercnt");
					proReg = rs.getDate("pro_reg");
					
					pmidlistdto = new PMidListDTO(displImgSrc, brandName, displProName, lId, midId, sId, proPrice, afterPrice, displId, productID, prc, pdc, stock, displLike, ordercnt, proReg);
					
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
		} //try_catch
		
		return list;
	} // selectProList

	
	
	
	
	
	
	
	
	
	
	
} // class
