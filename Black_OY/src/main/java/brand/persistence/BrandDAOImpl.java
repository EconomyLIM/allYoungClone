package brand.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.ConnectionProvider;

import brand.domain.BrandDTO;

public class BrandDAOImpl implements BrandDAO {

	@Override
	public List<BrandDTO> getAllBrandsDetails() throws Exception {

		List<BrandDTO> brands = new ArrayList<>();

		try (Connection conn = ConnectionProvider.getConnection(); 
				PreparedStatement preparedStatement = conn.prepareStatement(SELECT_ALL_BRANDS)) {
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
		} // try_catch
		return brands;

	} // getAllBrandsDetails



}
