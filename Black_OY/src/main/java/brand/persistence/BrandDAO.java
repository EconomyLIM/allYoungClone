package brand.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import brand.domain.BrandDTO;

public interface BrandDAO {


   //상단 브랜드 정보 가져오기 
   BrandDTO getBrands(String brandId) throws Exception; 

   // 브랜드제품  인기순 리스트 가져오기  , 베스트 상품 
   List<BrandDTO> getBestBrandpro(String brand_Id, String category_s_Id) throws Exception;

   //   //베스트제품 4개  
   List<BrandDTO> getsellProduct(String brandId, String categoryId) throws Exception;

   // 전체, 스킨케어, 마스크팩, 선케어 가져오기 
   List<BrandDTO> getCATEBrands(String brandId, String cate_l_id) throws Exception;
   // 리뷰 가져오기
List<BrandDTO> getreviews(String brandId) throws Exception;



   //스킨케어 , 마스크팩, 선크림 소카테고리별 상품 가져오기
//   List<BrandDTO> getCATEBrandsDetail() throws Exception;


   // 브랜드 제품 낮은가격순으로 가져오기
//   List<BrandDTO> getProductsByCategory(String brandId, String catSId) throws Exception;

   // 리뷰 가져오기  상품표시이미지, 평점, 도움돼요수 , 리뷰내용
//   List<BrandDTO> getreviews() throws Exception;

   //판매순 
//   List<BrandDTO> getsellProduct(Connection conn,  String brand_Id, String category_s_Id) throws Exception;
     
   ////구달 브랜드 제품 신상품 순으로 가져오기 
//   List<BrandDTO> getNewBrandsDetail(String brand_Id) throws Exception;
 



}