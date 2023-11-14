package brand.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import brand.domain.BrandDTO;
import mypage.domain.MpQnADTO;

public class BrandDAOImpl<ProductDisplayDTO> implements BrandDAO {  //테이블과 관련된 쿼리 실행 


 
   
	@Override
   //스킨케어 , 마스크팩, 선크림 소카테고리별 상품 가져오기
   public List<BrandDTO> getCATEBrandsDetail() throws Exception {

      String sql = "SELECT "
            + "    PD.PRO_DISPL_NAME, "
            + "    PDI.PRO_DISPL_SRC, " 
            + "    R.REV_GRADE, "
            + "    P.PRO_PRICE "
            + " FROM "
            + "    PRODUCT P "
            + "JOIN PRODUCT_DISPLAY PD ON P.PRO_DISPL_ID = PD.PRO_DISPL_ID "
            + " JOIN PRO_DISPL_IMG PDI ON PD.PRO_DISPL_ID = PDI.PRO_DISPL_ID "
            + "LEFT JOIN REVIEW R ON PD.PRO_DISPL_ID = R.PRO_DISPL_ID "
            + "ORDER BY PD.PRO_DISPL_LIKE DESC ";
      
      List<BrandDTO> brandds = new ArrayList<>();

      try (Connection conn = ConnectionProvider.getConnection(); 
            PreparedStatement preparedStatement = conn.prepareStatement(sql)) {
         ResultSet rs = preparedStatement.executeQuery();
         while (rs.next()) {
          BrandDTO brandd = new BrandDTO();

            brandd.setPro_price(rs.getInt("pro_price"));
            brandd.setPro_displ_id(rs.getString("pro_displ_name"));
            brandd.setPro_displ_src(rs.getString("pro_displ_src"));
            brandd.setRev_like(rs.getInt("rev_like")); // X
            brandd.setRev_grade(rs.getInt("rev_grade"));
          brandds.add(brandd);
         } // while
      } catch (SQLException e) {
         // Handle SQL exception
         e.printStackTrace();
      }// try_catch
      return brandds;
           
   } // getCATEBrandsDetails


   
   @Override  
    //브랜드제품  인기순 리스트 가져오기  , 베스트 상품 
   public List<BrandDTO> getBestBrandpro(String brand_Id, String category_s_Id) throws Exception {
      
       List<BrandDTO> bsbrandpros = new ArrayList<>();
       
       String sql = " SELECT PD.PRO_DISPL_NAME, PDI.PRO_DISPL_SRC, PD.PRO_DISPL_LIKE, P.PRO_PRICE " +
                    " FROM PRODUCT_DISPLAY PD " +
                    " JOIN PRODUCT P ON PD.PRO_DISPL_ID = P.PRO_DISPL_ID " +
                    " JOIN PRO_DISPL_IMG PDI ON PD.PRO_DISPL_ID = PDI.PRO_DISPL_ID " +
                    " WHERE PD.BRAND_ID = ? AND P.CAT_S_ID = ? " +
                    " ORDER BY PD.PRO_DISPL_LIKE DESC ";
       
       Connection conn = null;
       PreparedStatement preparedStatement = null;
       ResultSet rs = null;

       try {
           conn = ConnectionProvider.getConnection();
           preparedStatement = conn.prepareStatement(sql);
           
           preparedStatement.setString(1, brand_Id);
           preparedStatement.setString(2, category_s_Id);
           rs = preparedStatement.executeQuery();
           
           while (rs.next()) {
               BrandDTO bsbrandpro = new BrandDTO();
               bsbrandpro.setPro_displ_name(rs.getString("pro_displ_name"));
               bsbrandpro.setPro_displ_src(rs.getString("pro_displ_src"));
               bsbrandpro.setPro_displ_like(rs.getInt("pro_displ_like"));
               bsbrandpro.setPro_price(rs.getInt("pro_price"));
            bsbrandpros.add(bsbrandpro); 
           }
       }
       catch (Exception e) {
           e.printStackTrace();
           
       } finally {
           if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
           if (preparedStatement != null) try { preparedStatement.close(); } catch (SQLException e) { e.printStackTrace(); }
           if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
       }
       
       return bsbrandpros;
   }

   @Override
    //구달 브랜드 제품 신상품 순으로 가져오기 
   public List<BrandDTO> getNewBrandsDetail(String brand_Id) throws Exception {

      String sql = "SELECT "
            +  " PD.PRO_DISPL_NAME, PDI.PRO_DISPL_SRC, PD.PRO_DISPL_LIKE, P.PRO_PRICE,PD.PRO_REG "
            + " FROM PRODUCT_DISPLAY PD "
            + " JOIN PRODUCT P ON PD.PRO_DISPL_ID = P.PRO_DISPL_ID "
            + " LEFT JOIN PRO_DISPL_IMG PDI ON PD.PRO_DISPL_ID = PDI.PRO_DISPL_ID "
            + " WHERE PD.BRAND_ID = ? "
            + " ORDER BY PRO_REG DESC";
      
      List<BrandDTO> nwbrands = new ArrayList<>();

      try (
    		  Connection conn = ConnectionProvider.getConnection(); 
            PreparedStatement preparedStatement = conn.prepareStatement(sql)) {
    	  
    	  preparedStatement.setString(1, brand_Id);
    	  
         ResultSet rs = preparedStatement.executeQuery();
         while (rs.next()) {
          BrandDTO nwbrand = new BrandDTO();

          nwbrand.setPro_price(rs.getInt("pro_price"));
          nwbrand.setPro_displ_id(rs.getString("pro_displ_name"));
          nwbrand.setPro_displ_src(rs.getString("pro_displ_src"));
          nwbrand.setRev_like(rs.getInt("rev_like"));
          nwbrand.setRev_grade(rs.getInt("rev_grade"));
          nwbrands.add(nwbrand);
         } // while
      } catch (SQLException e) {
         // Handle SQL exception
         e.printStackTrace();
      }// try_catch
      return nwbrands;
           
   } // getAllBrandsDetails



// 브랜드 제품 판매순으로 가져오기  ? 재고순? 
	/*
	 * @Override public List getAllBrandsDetails() throws Exception {
	 * 
	 * return null; }
	 */
   
   
    
   
   @Override
   // 브랜드 제품 낮은가격순으로 가져오기
    public List<BrandDTO> getProductsByCategory(String brandId, String catSId) throws Exception  {
           List<BrandDTO> lowpris = new ArrayList<>();
           String sql = "SELECT PD.PRO_DISPL_NAME, PDI.PRO_DISPL_SRC, R.REV_GRADE, P.PRO_PRICE " +
                        "FROM PRODUCT_DISPLAY PD " +
                        "JOIN PRODUCT P ON PD.PRO_DISPL_ID = P.PRO_DISPL_ID " +
                        "JOIN PRO_DISPL_IMG PDI ON PD.PRO_DISPL_ID = PDI.PRO_DISPL_ID " +
                        "JOIN REVIEW R ON PD.PRO_DISPL_ID = R.PRO_DISPL_ID " +
                        "WHERE PD.BRAND_ID = ? AND P.CAT_S_ID = ? " +
                        "ORDER BY P.PRO_PRICE ASC";    
           // 낮은 가격순으로 정렬

           Connection conn = ConnectionProvider.getConnection();  
           PreparedStatement pstmt = conn.prepareStatement(sql);
           ResultSet rs = null;
           
           try { 
                
               pstmt.setString(1, brandId);
               pstmt.setString(2, catSId);
               rs = pstmt.executeQuery();
               
               while (rs.next()) {
                   BrandDTO lowpri = new BrandDTO();
                   lowpri.setPro_displ_name(rs.getString("pro_displ_name"));
                   lowpri.setPro_displ_src(rs.getString("pro_displ_src"));
                   lowpri.setRev_grade(rs.getInt("rev_grade"));
                   lowpri.setPro_price(rs.getInt("pro_price"));
                   lowpris.add(lowpri); 
               } 
           }finally {
     	    	  JDBCUtil.close(pstmt);
  				JDBCUtil.close(rs);
  				JDBCUtil.close(conn);  
               }
           
           
    
   
           return lowpris;
       }
   
    // 브랜드 제품 할인율순으로 가져오기
   
    
    // middle
    // 리뷰 가져오기  상품표시이미지, 평점, 도움돼요수 , 리뷰내용 
    @Override
    public List<BrandDTO> getreviews() throws Exception {
		
    	List<BrandDTO> relists = new ArrayList<>();
		String sql =" SELECT pdi.PRO_DISPL_SRC, r.REV_LIKE, r.REV_GRADE, r.REV_CONTENT "
				+ " FROM PRODUCT_DISPLAY pd "
				+ " JOIN PRO_DISPL_IMG pdi ON pd.PRO_DISPL_ID = pdi.PRO_DISPL_ID "
				+ " JOIN REVIEW r ON pd.PRO_DISPL_ID = r.PRO_DISPL_ID ";
		ArrayList<BrandDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Connection conn = ConnectionProvider.getConnection(); 
		try {
			pstmt = conn.prepareStatement(sql);
		 rs = pstmt.executeQuery();

		 while (rs.next()) {
	          BrandDTO relist = new BrandDTO();
	          relist.setRev_content(rs.getString("rev_content"));
	          relist.setPro_displ_src(rs.getString("pro_displ_src"));
	          relist.setRev_like(rs.getInt("rev_like"));
	          relist.setRev_grade(rs.getInt("rev_grade"));
	          relists.add(relist);
	         } // while
	      } catch (SQLException e) {
	         // Handle SQL exception
	         e.printStackTrace();
	      } // try_catch
		finally{
	    	  JDBCUtil.close(pstmt);
				JDBCUtil.close(rs);
				JDBCUtil.close(conn);  
	    	  
	      }
	      return relists;
	           
	}
      
    //판매순 
    @Override
    public List<BrandDTO> getsellProduct(Connection conn, String brand_Id, String category_s_Id) throws Exception {
        
        List<BrandDTO> bsbrandpros = new ArrayList<>();
        
        String sql = "SELECT PD.PRO_DISPL_NAME, PDI.PRO_DISPL_SRC, PD.PRO_DISPL_LIKE, P.PRO_PRICE " +
                     "FROM PRODUCT_DISPLAY PD " +
                     "JOIN PRODUCT P ON PD.PRO_DISPL_ID = P.PRO_DISPL_ID " +
                     "JOIN PRO_DISPL_IMG PDI ON PD.PRO_DISPL_ID = PDI.PRO_DISPL_ID " +
                     "WHERE PD.BRAND_ID = ? AND P.CAT_S_ID = ? " +
                     "ORDER BY PD.PRO_DISPL_LIKE DESC";
       
        PreparedStatement preparedStatement = null;
        ResultSet rs = null;

        try { 
            preparedStatement = conn.prepareStatement(sql);
            
            preparedStatement.setString(1, brand_Id);
            preparedStatement.setString(2, category_s_Id);
            rs = preparedStatement.executeQuery();
            
            while (rs.next()) {
                BrandDTO bsbrandpro = new BrandDTO();
                bsbrandpro.setPro_displ_name(rs.getString("pro_displ_name"));
                bsbrandpro.setPro_displ_src(rs.getString("pro_displ_src"));
                bsbrandpro.setPro_displ_like(rs.getInt("pro_displ_like"));
                bsbrandpro.setPro_price(rs.getInt("pro_price"));
             bsbrandpros.add(bsbrandpro); 
            }
        }
        catch (Exception e) {
            e.printStackTrace();
            
        } finally {
            if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (preparedStatement != null) try { preparedStatement.close(); } catch (SQLException e) { e.printStackTrace(); }
            if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
        }
        
        return bsbrandpros;
    }


	@Override
	public BrandDTO getBrands(String brandId) throws Exception {
	
		String sql = "SELECT"
	            + " B.BRAND_NAME, B.BRAND_LIKE, B.BRAND_SUMM, B.BRAND_EXPL, BI.BRAND_IMG_SRC "
	            + " FROM BRAND B JOIN BRAND_IMG BI ON B.BRAND_ID = BI.BRAND_ID "
	            + " WHERE B.BRAND_ID = ? ";
	      
	       BrandDTO  brand = new BrandDTO();

	       Connection conn =  ConnectionProvider.getConnection(); 
	       PreparedStatement preparedStatement = conn.prepareStatement(sql);
	       ResultSet rs = null;
	       
	      try {
	         
	          preparedStatement.setString(1, brandId );
	          rs = preparedStatement.executeQuery();
	         
	         
	         while (rs.next()) { 
	            brand.setBrand_name(rs.getString("brand_name"));
	         brand.setBrand_like(rs.getInt("brand_like"));
	         brand.setBrand_summ(rs.getString("brand_summ"));
	            brand.setBrand_expl(rs.getString("brand_expl"));
	            brand.setBrand_img_src(rs.getString("brand_img_src"));
	            
	         } // while
	      } catch (SQLException e) {
	         // Handle SQL exception
	         e.printStackTrace();
	         
	         preparedStatement.close();
	         rs.close();
	         
	      }// try_catch
	      return brand;
	}



	@Override
	public List<BrandDTO> getNewBrandsDetail() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

 


 
    
    
}