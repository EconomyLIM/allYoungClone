//BRANDDAOIMPL
package brand.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.util.ConnectionProvider;

import brand.domain.BrandDTO;

public class BrandDAOImpl<ProductDisplayDTO> implements BrandDAO {  //테이블과 관련된 쿼리 실행 



   //브랜드 가져오기 (브랜드페이지, 브랜드사진 이름, 요악 부분) 
   @Override
   public BrandDTO getBrands(String brandId) throws Exception {

      String sql = " SELECT b.brand_id, "
            + " B.BRAND_NAME, B.BRAND_LIKE, B.BRAND_SUMM, B.BRAND_EXPL, BI.BRAND_IMG_SRC "
            + " FROM BRAND B JOIN BRAND_IMG BI ON B.BRAND_ID = BI.BRAND_ID "
            + " WHERE B.BRAND_ID = ? ";

      BrandDTO brand = null;

      Connection conn =  ConnectionProvider.getConnection(); 

      ResultSet rs = null;

      try {
         PreparedStatement preparedStatement = conn.prepareStatement(sql);
         preparedStatement.setString(1,brandId);
         rs = preparedStatement.executeQuery();


         if(rs.next()) {
            System.out.println("rs변수 담기");
            do {
               /* [1]
                */

               brand = BrandDTO.builder()
                     .brand_id(rs.getString("brand_id"))
                     .brand_name(rs.getString("BRAND_NAME"))
                     .brand_like(rs.getInt("BRAND_LIKE"))
                     .brand_summ(rs.getString("BRAND_SUMM"))
                     .brand_expl(rs.getString("BRAND_EXPL"))
                     .brand_img_src(rs.getString("BRAND_IMG_SRC"))
                     .build();
               
               


               /*[2]
                * 
                * 
                * brand = new BrandDTO(brandId, brandId, 0, brandId, brandId, brandId, 0); 
                * */

               /*[3]
                * 
                * brand.setBrandId(rs.getString("brand_id"))
                * */

            } while ( rs.next() );

         }
      } catch (SQLException e) {
         // Handle SQL exception
         e.printStackTrace();

         //preparedStatement.close();


      } finally {
         rs.close();

      }// try_catch
      return brand;

   } // getBrands
   
   public List<BrandDTO> getSortBrands(String brandId, String dispcatno) throws Exception {

      String sql = " SELECT PD.PRO_DISPL_NAME, PDI.PRO_DISPL_SRC, PD.PRO_DISPL_LIKE, P.PRO_PRICE, PD.BRAND_ID  "
            + "            FROM PRODUCT_DISPLAY PD  "
            + "            JOIN PRODUCT P ON PD.PRO_DISPL_ID = P.PRO_DISPL_ID  "
            + "            JOIN PRO_DISPL_IMG PDI ON PD.PRO_DISPL_ID = PDI.PRO_DISPL_ID  "
            + "            WHERE PD.BRAND_ID = ? ";

      /*
       * if(sort.equals("p")) { sql += " ORDER BY PD.PRO_DISPL_LIKE DESC"; } else
       * if(sort.equals("n")) { sql += ""; } else if(sort.equals("s")) { sql += ""; }
       * else if(sort.equals("l")) { sql += ""; } else if(sort.equals("d")) { sql +=
       * ""; } else { // 아무것도 안들어왔을때
       * 
       * }
       */
      
      sql+= "cat_m_id = ? ";
      
      List<BrandDTO> list = null;
      BrandDTO brand = null;

      Connection conn =  ConnectionProvider.getConnection(); 

      ResultSet rs = null;

      try {
         PreparedStatement preparedStatement = conn.prepareStatement(sql);
         preparedStatement.setString(1,brandId);
         preparedStatement.setString(2,dispcatno);
         rs = preparedStatement.executeQuery();


         if(rs.next()) {
            System.out.println("rs변수 담기");
            list = new ArrayList<>();
            do {
               /* [1]
                */

               /*
                * brand = BrandDTO.builder() .b .build();
                */


               /*[2]
                * 
                * 
                * brand = new BrandDTO(brandId, brandId, 0, brandId, brandId, brandId, 0); 
                * */

               /*[3]
                * 
                * brand.setBrandId(rs.getString("brand_id"))
                * */
               list.add(brand);
            } while ( rs.next() );

         }
      } catch (SQLException e) {
         // Handle SQL exception
         e.printStackTrace();

         //preparedStatement.close();


      } finally {
         rs.close();

      }// try_catch
      return list;

   } // getBrands
   
   
      
   // 스킨케어/마스크팩/선크림  카테고리 대분류 별로 가져오기   
   public List<BrandDTO> getCATEBrands(String brandId, String cate_l_id) throws Exception {

      String sql = " SELECT distinct cl.cat_l_id, cl.cat_l_name"
            + "FROM cate_m cm"
            + "JOIN cate_l cl ON cl.cat_l_id = cm.cat_l_id"
            + "JOIN cate_s cs ON cm.cat_m_id = cs.cat_m_id"
            + "LEFT JOIN product p ON p.cat_s_id = cs.cat_s_id"
            + "LEFT JOIN product_display pd ON pd.pro_displ_id = p.pro_displ_id "
            + "LEFT JOIN brand b ON b.brand_id = pd.brand_id"
            + "where b.brand_id = ''; ";

      if(cate_l_id.equals("cate_1")) {
         sql +=  " ";
         
      } else if(cate_l_id.equals("cate_2")) {
         sql += " WHERE cate_l_id= '0001'";            
      } else if(cate_l_id.equals("cate_3")) {
         sql += " WHERE cate_l_id= '0003'";
      } else if(cate_l_id.equals("cate_4")) {
         sql += " WHERE cate_l_id= '0004' ";
      } 
       
      
      List<BrandDTO> list = null;
      BrandDTO brand = null;

      Connection conn =  ConnectionProvider.getConnection(); 

      ResultSet rs = null;

      try {
         PreparedStatement preparedStatement = conn.prepareStatement(sql);
         preparedStatement.setString(1,brandId);
         preparedStatement.setString(2,cate_l_id);
         rs = preparedStatement.executeQuery();


         if(rs.next()) {
            System.out.println("rs변수 담기");
            list = new ArrayList<>();
            do {
               /* [1]
                */

               /*
                * brand = BrandDTO.builder() .b .build();
                */


               /*[2]
                * 
                * 
                * brand = new BrandDTO(brandId, brandId, 0, brandId, brandId, brandId, 0); 
                * */

               /*[3]
                * 
                * brand.setBrandId(rs.getString("brand_id"))
                * */
               list.add(brand);
            } while ( rs.next() );

         }
      } catch (SQLException e) {
         // Handle SQL exception
         e.printStackTrace();

         //preparedStatement.close();


      } finally {
         rs.close();

      }// try_catch
      return list;

   } // getBrands

   //
      
   
   //인기순/ 신상품순/ 판매순/ 낮은가격순 으로 가져오기 
   @Override
   public List<BrandDTO> getBestBrandpro(String brandId, String sort) throws Exception { //두개의 메소드를 받음 

      String sql = " SELECT PD.PRO_DISPL_NAME, PDI.PRO_DISPL_SRC, PD.PRO_DISPL_LIKE, P.PRO_PRICE, PD.BRAND_ID "
            + " FROM PRODUCT_DISPLAY PD "
            + " JOIN PRODUCT P ON PD.PRO_DISPL_ID = P.PRO_DISPL_ID "
            + " JOIN PRO_DISPL_IMG PDI ON PD.PRO_DISPL_ID = PDI.PRO_DISPL_ID "
            + " WHERE PD.BRAND_ID = ? ";   
           
         /*
            if(sort !=null ) {
               sql += " AND P.CAT_M_ID = ? ";
            } else if(sort.equals("p")) {
               sql += "ORDER BY PD.PRO_DISPL_LIKE DESC";
            } else if(sort.equals("")) {
               sql += "";
            } else if(sort.equals("")) {
               sql += "";
            } else if(sort.equals("")) {
               sql += "";
            } 
           */ 
    
      List<BrandDTO> bestBrandProducts = new ArrayList<>();


      try (Connection conn = ConnectionProvider.getConnection();  //데이터베이스 연결 
            PreparedStatement preparedStatement = conn.prepareStatement(sql) ) { //SQL 쿼리를 받고,   

         preparedStatement.setString(1, brandId); // 매개변수값을 설정  
         if (sort != null) {
            preparedStatement.setString(2, sort);   
         }

         try (ResultSet rs = preparedStatement.executeQuery()) { //RESULTSET을 통해 쿼리 실행결과를 받아옴 
            while (rs.next()) {
               BrandDTO brand = BrandDTO.builder()  // brandbuilder를 사용하여 BRANDdto객체 생성 
                     .pro_displ_name(rs.getString("PRO_DISPL_NAME")) // 
                     .pro_displ_src(rs.getString("PRO_DISPL_SRC"))
                     .pro_displ_like(rs.getInt("PRO_DISPL_LIKE"))
                     .pro_price(rs.getInt("PRO_PRICE"))
                     .brand_id(rs.getString("BRAND_ID"))
                     .build();  
               bestBrandProducts.add(brand);      // 이 객체들을 brandPRODUCT리스트에 추가 
            }
         }
      } // Resources are automatically closed here, no need for a finally block
      return bestBrandProducts;
   }

   //베스트 - 슬라이드바에 있는 베스트 수 4개    
   @Override
   public List<BrandDTO> getsellProduct(String brandId, String categoryId) throws Exception {

      String sql = "SELECT ROWNUM, t.* "
            + "FROM ( "
            + "    SELECT PD.PRO_DISPL_NAME, PDI.PRO_DISPL_SRC, PD.PRO_DISPL_LIKE, P.PRO_PRICE  "
            + "    FROM PRODUCT_DISPLAY PD JOIN PRODUCT P ON PD.PRO_DISPL_ID = P.PRO_DISPL_ID  "
            + "                            JOIN PRO_DISPL_IMG PDI ON PD.PRO_DISPL_ID = PDI.PRO_DISPL_ID  "
            + "    WHERE PD.BRAND_ID = ?  "
            + "    ORDER BY PD.PRO_DISPL_LIKE DESC "
            + " ) t "
            + " WHERE ROWNUM < 5";

      
      
      
      List<BrandDTO> sellbrandProducts = new ArrayList<>();

      try (Connection conn = ConnectionProvider.getConnection();
            PreparedStatement preparedStatement = conn.prepareStatement(sql)) {

         preparedStatement.setString(1, brandId);
         //preparedStatement.setString(2, categoryId);
         try (ResultSet rs = preparedStatement.executeQuery()) {
            while (rs.next()) {
               BrandDTO sellbrandProduct = BrandDTO.builder()
                     .pro_displ_name(rs.getString("PRO_DISPL_NAME"))
                     .pro_displ_src(rs.getString("PRO_DISPL_SRC"))
                     .pro_displ_like(rs.getInt("PRO_DISPL_LIKE"))
                     .pro_price(rs.getInt("PRO_PRICE")) // Assuming price can be a decimal
                     .build();
               sellbrandProducts.add(sellbrandProduct);
            }
         }
      } catch (SQLException e) {
      // Handle SQL exception
         e.printStackTrace();
      //preparedStatement.close();
      } finally {
      }// try_catch
      return sellbrandProducts;
   }

   @Override
   public List<BrandDTO> getReviews(String brandId) throws Exception {
      // TODO Auto-generated method stub
      return null;
   }

   //신상품순  카테고리별 (스킨케어/마스크팩/ 선크림) 가져오기  ---- 가져가서 사용하기 
   // 구달 브랜드 제품 인기순/신상품순/판매순/낮은가격 순으로 가져오기 잠시수정중
   //public List<BrandDTO> getNewBrandsDetail(String brandId , String cate_m_id) throws Exception {
   /*
    String sql ="SELECT pdi.PRO_DISPL_SRC, pd.PRO_DISPL_NAME, pd.PRO_DISPL_ID, p.PRO_PRICE, pd.BRAND_ID, pd.PRO_DISPL_LIKE, pd.PRO_REG "
     + "FROM PRODUCT_DISPLAY pd " +
     "JOIN PRODUCT p ON pd.PRO_DISPL_ID = p.PRO_DISPL_ID " +
    "JOIN PRO_DISPL_IMG pdi ON pd.PRO_DISPL_ID = pdi.PRO_DISPL_ID " +
     "JOIN CATE_S cs ON p.CAT_S_ID = cs.CAT_S_ID " +
     "WHERE pd.BRAND_ID = ? AND cs.CAT_M_ID = ? ";
     
     if (cate_m_id != null) { 
        sql += "ORDER BY PD.PRO_REG DESC"; 
        }else if{ sql +=
     "ORDER BY PD.PRO_REG DESC"; 
        } else if (cate_m_id == '0013'){ 
           sql += "ORDER BY PD.PRO_DISPL_LIKE DESC";
           } else if(cate_m_id == '0016') { 
              sql +="ORDER BY p.PRO_PRICE";
}else if(cate_m_id == '0015'){ sql += "ORDER BY p.PRO_PRICE"; } //if_else
     
     
     if(sort.equals("p")) { sql += " ORDER BY PD.PRO_DISPL_LIKE DESC"; } else
     if(sort.equals("n")) { sql += "ORDER BY PD.PRO_REG DESC"; } else
     if(sort.equals("s")) { sql += ""; } else if(sort.equals("l")) { sql += ""; }
     else if(sort.equals("d")) { sql += ""; }
     
     // + 인기순 /판매순 / 낮은 가격순 if 문? switch문?
     
     
     List<BrandDTO> newBrandDetails = new ArrayList<>();
     
     try (
     
     Connection conn = ConnectionProvider.getConnection(); PreparedStatement
     preparedStatement = conn.prepareStatement(sql)
     
     ) {
     
     preparedStatement.setString(1, brandId); if (categoryId != null) {
     preparedStatement.setString(2, categoryId); } try ( ResultSet rs =
     preparedStatement.executeQuery()
     
     ) { while (rs.next()) { BrandDTO newBrand = BrandDTO.builder()
     .pro_displ_name(rs.getString("PRO_DISPL_NAME"))
     .pro_displ_src(rs.getString("PRO_DISPL_SRC"))
     .pro_displ_like(rs.getInt("PRO_DISPL_LIKE"))
     .pro_price(rs.getInt("PRO_PRICE")) .pre_reg(rs.getDate("pre_reg"))
     newBrandDetails.add(newBrand); } } } catch (Exception e) {
     e.printStackTrace(); }finally {
     
     
     }
     
     return newBrandDetails;
     
     
     }
     
     //판매순
     
     
         
   //리뷰가져오기 
   @Override
   public List<BrandDTO> getReviews(String pro_displ_id) throws Exception {
      List<BrandDTO> relists = new ArrayList<>();
      String sql = " SELECT r.REV_ID, pdi.PRO_DISPL_SRC, r.REV_LIKE, r.REV_GRADE, r.REV_CONTENT, pd.pro_displ_id "
            + " FROM PRODUCT_DISPLAY pd "
            + " JOIN PRO_DISPL_IMG pdi ON pd.PRO_DISPL_ID = pdi.PRO_DISPL_ID "
            + " JOIN REVIEW r ON pd.PRO_DISPL_ID = r.PRO_DISPL_ID "
            + " WHERE pd.PRO_DISPL_ID = 'pd_00000006' ";

      Connection conn = ConnectionProvider.getConnection();
      ResultSet rs = null;

      try {
         PreparedStatement pstmt = conn.prepareStatement(sql);
         //pstmt.setString(1, brandId);
         rs = pstmt.executeQuery();

         while (rs.next()) {
            BrandDTO relist = BrandDTO.builder()
                  .rev_id(rs.getString("rev_id"))
                  .pro_displ_src(rs.getString("pro_displ_src"))
                  .pro_displ_id(rs.getString("pro_displ_id"))
                  .rev_like(rs.getInt("rev_like"))
                  .rev_grade(rs.getInt("rev_grade"))
                  .rev_content(rs.getString("rev_content"))
                  .build();
            relists.add(relist);
            
         }
      } catch (SQLException e) {
         
         e.printStackTrace();
      } finally {
      rs.close();
       
      }

      return relists;
   }


   // 브랜드 제품 할인율순으로 가져오기


   //
   /* 이전코딩들 
    ajax 사용 
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
            + " JOIN PRODUCT_DISPLAY PD ON P.PRO_DISPL_ID = PD.PRO_DISPL_ID "
            + " JOIN PRO_DISPL_IMG PDI ON PD.PRO_DISPL_ID = PDI.PRO_DISPL_ID "
            + " LEFT JOIN REVIEW R ON PD.PRO_DISPL_ID = R.PRO_DISPL_ID "
            + " ORDER BY PD.PRO_DISPL_LIKE DESC ";

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


      String sql = " SELECT b.brand_id"
            + " B.BRAND_NAME, B.BRAND_LIKE, B.BRAND_SUMM, B.BRAND_EXPL, BI.BRAND_IMG_SRC "
            + " FROM BRAND B JOIN BRAND_IMG BI ON B.BRAND_ID = BI.BRAND_ID "
            + " WHERE B.BRAND_ID = ? ";

      BrandDTO brand = null;

      Connection conn =  ConnectionProvider.getConnection(); 

      ResultSet rs = null;

      String brand_id; 
      String brand_name;
      int brand_like;
      String brand_summ;
      String  brand_expl;
      String brand_img_src;
      String pro_displ_id;



      try {
         PreparedStatement preparedStatement = conn.prepareStatement(sql);
         preparedStatement.setString(1, brandId );
         rs = preparedStatement.executeQuery();


         if(rs.next()) {
            System.out.println("rs변수 담기");

            brand = BrandDTO.builder()
                  .brand_id(rs.getString("brand_id"))
                  .brand_name(rs.getString("BRAND_NAME"))
                  .brand_like(rs.getInt("BRAND_LIKE"))
                  .brand_summ(rs.getString("BRAND_SUMM"))
                  .brand_expl(rs.getString("BRAND_EXPL"))
                  .brand_img_src(rs.getString("BRAND_IMG_SRC"))
                  .build();

         }
      } catch (SQLException e) {
         // Handle SQL exception
         e.printStackTrace();

         //            preparedStatement.close();
         rs.close();

      }// try_catch
      return brand;

      return null;
   } // getBrands

    */

   //스킨케어 리스트 가져오기 





   // 메이크업 리스트 가져오기 



   // 선크림 리스트 가져오기 



}