package brand;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BrandDAO { //수정필요 
/*

        String sql = "SELECT b.BRAND_ID, b.BRAND_NAME, b.BRAND_LIKE, b.BRAND_SUMM, b.BRAND_EXPL, bi.BRAND_IMG_SRC, pd.PRO_DISPL_NAME, p.CAT_S_ID, p.PRO_PRICE, p.PRO_NAME, r.USER_ID, r.REV_LIKE, r.REV_CONTENT " +
                     "FROM BRAND_TABLE b " +
                     "JOIN BRAND_IMAGE_TABLE bi ON b.BRAND_ID = bi.BRAND_ID " +
                     "JOIN PRODUCT_DISPLAY_TABLE pd ON b.BRAND_ID = pd.BRAND_ID " +
                     "JOIN PRODUCT_TABLE p ON pd.PRO_DISPL_ID = p.PRO_DISPL_ID " +
                     "JOIN REVIEW_TABLE r ON pd.PRO_DISPL_ID = r.PRO_DISPL_ID";

        try (Connection conn = DBConnection
                String sql = "SELECT b.BRAND_ID, b.BRAND_NAME, b.BRAND_LIKE, b.BRAND_SUMM, b.BRAND_EXPL, bi.BRAND_IMG_SRC, pd.PRO_DISPL_NAME, p.CAT_S_ID, p.PRO_PRICE, p.PRO_NAME, r.USER_ID, r.REV_LIKE, r.REV_CONTENT " +
                        "FROM BRAND_TABLE b " +
                        "JOIN BRAND_IMAGE_TABLE bi ON b.BRAND_ID = bi.BRAND_ID " +
                        "JOIN PRODUCT_DISPLAY_TABLE pd ON b.BRAND_ID = pd.BRAND_ID " +
                        "JOIN PRODUCT_TABLE p ON pd.PRO_DISPL_ID = p.PRO_DISPL_ID " +
                        "JOIN REVIEW_TABLE r ON pd.PRO_DISPL_ID = r.PRO_DISPL_ID";

           try (Connection conn = DBConnection.getConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql)) {

               ResultSet rs = pstmt.executeQuery();

               while (rs.next()) {
                   BrandInfo brandInfo = new BrandInfo();
                   brandInfo.setBrandId(rs.getString("BRAND_ID")); //브랜드 이미지 
                   brandInfo.setBrandName(rs.getString("BRAND_NAME")); //브랜드 네임 
                   brandInfo.setBrandLike(rs.getInt("BRAND_LIKE")); // 브랜드 좋아요 
                   brandInfo.setBrandSummary(rs.getString("BRAND_SUMM")); // 브랜드 짧은 설명 
                   brandInfo.setBrandExplanation(rs.getString("BRAND_EXPL")); // 브랜드 설명 
                   brandInfo.setBrandImageSrc(rs.getString("BRAND_IMG_SRC")); //브랜드 이미지 
                   brandInfo.setProductDisplayName(rs.getString("PRO_DISPL_NAME")); //상품표시 이름 
                   brandInfo.setSubCategoryId(rs.getString("CAT_S_ID"));  // 소분류 카테고리  
                   brandInfo.setProductPrice(rs.getDouble("PRO_PRICE")); //상품 가격 
                   brandInfo.setProductName(rs.getString("PRO_NAME"));  // 상품 이름 
                   brandInfo.setUserId(rs.getString("USER_ID"));  //유저 아이디 
                   brandInfo.setReviewLikes(rs.getInt("REV_LIKE")); //  기뷰 라이크 
                   brandInfo.setReviewContent(rs.getString("REV_CONTENT"));
                   // ... 여기에 더 많은 필드 설정이 들어갈 수 있습니다.

                   brandList.add(brandInfo);
               }
           } catch (Exception e) {
               e.printStackTrace();
               // 에러 처리 로직
           }

           return brandList;
       }
   }.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                BrandInfo brandInfo = new BrandInfo();
                brandInfo.setBrandId(rs.getString("BRAND_ID")); //브랜드 아이디 
                brandInfo.setBrandName(rs.getString("BRAND_NAME")); 
                brandInfo.setBrandLike(rs.getInt("BRAND_LIKE"));
                brandInfo.setBrandSummary(rs.getString("BRAND_SUMM"));
                brandInfo.setBrandExplanation(rs.getString("BRAND_EXPL"));
                brandInfo.setBrandImageSrc(rs.getString("BRAND_IMG_SRC"));
                brandInfo.setProductDisplayName(rs.getString("PRO_DISPL_NAME"));
                brandInfo.setSubCategoryId(rs.getString("CAT_S_ID"));
                brandInfo.setProductPrice(rs.getDouble("PRO_PRICE"));
                brandInfo.setProductName(rs.getString("PRO_NAME"));
                brandInfo.setUserId(rs.getString("USER_ID"));
                brandInfo.setReviewLikes(rs.getInt("REV_LIKE"));
                brandInfo.setReviewContent(rs.getString("REV_CONTENT"));
                // ... 여기에 더 많은 필드 설정이 들어갈 수 있습니다.

                brandList.add(brandInfo);
            }
        } catch (Exception e) {
            e.printStackTrace();
            // 에러 처리 로직
        }

        return brandList;
    }
}

		
		}*/

	
}
