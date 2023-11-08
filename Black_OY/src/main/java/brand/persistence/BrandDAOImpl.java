package brand.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import brand.domain.BrandDTO;

public class BrandDAOImpl implements BrandDAO {

	
	 //브랜드  구달제품 상품명, 상품가격, 상품표시이미지, 상품표시명 
	@Override
	public List<BrandDTO> getAllBrandsDetails() throws Exception {

		String sql = "SELECT "
				+ "    PD.PRO_DISPL_ID, "
				+ "    PD.PRO_DISPL_NAME, "
				+ "    PDI.PRO_DISPL_IMG, --  "
				+ "    PDI.PRO_DISPL_SRC, "
				+ "    R.REV_GRADE, "
				+ "    P.PRO_ID, "
				+ "    P.PRO_PRICE "
				+ "FROM "
				+ "    PRODUCT P "
				+ "JOIN PRODUCT_DISPLAY PD ON P.PRO_DISPL_ID = PD.PRO_DISPL_ID "
				+ "JOIN PRO_DISPL_IMG PDI ON PD.PRO_DISPL_ID = PDI.PRO_DISPL_ID "
				+ "LEFT JOIN REVIEW R ON PD.PRO_DISPL_ID = R.PRO_DISPL_ID "
				+ "ORDER BY PD.PRO_DISPL_LIKE DESC; ";
		
		List<BrandDTO> brands = new ArrayList<>();

		try (Connection conn = ConnectionProvider.getConnection(); 
				PreparedStatement preparedStatement = conn.prepareStatement(sql)) {
			ResultSet rs = preparedStatement.executeQuery();
			while (rs.next()) {
			 BrandDTO brand = new BrandDTO();
				brand.setBrand_Id(rs.getString("BRAND_ID"));
				brand.setBrand_Name(rs.getString("BRAND_NAME"));
				brand.setBrand_Like(rs.getInt("BRAND_LIKE"));
				brand.setBrand_Summ(rs.getString("BRAND_SUMM"));
				brand.setBrand_Expl(rs.getString("BRAND_EXPL"));
				brand.setBrandImgSrc(rs.getString("BRAND_IMG_SRC"));
				brand.setPro_Displ_Id(rs.getString("PRO_DISPL_ID"));
				brand.setPro_Price(rs.getInt("PRO_PRICE"));
				brand.setPro_Displ_Name(rs.getString("PRO_DISPL_NAME"));
				brand.setPro_Img_Src(rs.getString("PRO_IMG_SRC"));
				brand.setRev_Id(rs.getString("REV_ID"));
				brand.setRev_Like(rs.getInt("REV_LIKE"));
				brand.setRev_Content(rs.getString("REV_CONTENT"));
				brand.setRev_Grade(rs.getInt("REV_GRADE"));
			 brands.add(brand);
			} // while
		} catch (SQLException e) {
			// Handle SQL exception
			e.printStackTrace();
		}// try_catch
		return brands;
           
	} // getAllBrandsDetails
	 

}
