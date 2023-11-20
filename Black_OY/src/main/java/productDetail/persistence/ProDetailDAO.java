package productDetail.persistence;

import java.sql.Connection;
import java.util.List;

import productDetail.domain.AllCateDTO;
import productDetail.domain.CateLDTO;
import productDetail.domain.CateMDTO;
import productDetail.domain.CateSDTO;
import productDetail.domain.DetailBrandDTO;
import productDetail.domain.DetailExImgDTO;
import productDetail.domain.DetailInfoDTO;
import productDetail.domain.ProDisplImgDTO;
import productDetail.domain.ProductInfo;
import productDetail.domain.ProductMoreDTO;
import productDetail.domain.ProductPromo;
import productDetail.domain.QnADetailDTO;
import productDetail.domain.WrtieQnaDTO;

public interface ProDetailDAO {
	
	// 0. 현재 들어간 상품정보의 모든 카테고리 갖고오기
	public AllCateDTO allCate (Connection conn, String displId) throws Exception;

	// 1. 대분류 카테고리 가져오기
	public List<CateLDTO> selectCLlist (Connection conn, int hId) throws Exception;
	
	// 2. 중분류 카테고리 가져오기
	public List<CateMDTO> selectCMlist (Connection conn, String lId) throws Exception;
	
	// 3. 소분류 카테고리 가져오기
	public List<CateSDTO> selectCSlist (Connection conn, String id) throws Exception;
	
	// 4. 상품 정보 가져오기
	public List<ProductInfo> productInfo(Connection conn, String pid) throws Exception;
	
	// 5. 해당 상품의 프로모션 갖고오기
	public ProductPromo productPromo(Connection conn, String displId) throws Exception;
	
	// 6. 해당 상품의 표시 이미지 갖고오기
	public List<ProDisplImgDTO> productImgs(Connection conn, String displId) throws Exception;

	// 7. 해당 상품의 설명 이미지 갖고오기
	public List<DetailExImgDTO> detailExImg(Connection conn, String displId) throws Exception;
	
	// 8. 해당 상품의 브랜드 정보 갖고오기
	public DetailBrandDTO detailBrand(Connection conn, String displId) throws Exception;
	
	// 9. 해당상품의 정보 갖고오기
	public DetailInfoDTO detailInfo(Connection conn, String displId) throws Exception;
	
	// 10. 해당상품의 QnA 갖고오기
	public List<QnADetailDTO> detailQna (Connection conn, String displId) throws Exception;
	
	// 11. 해당 상품의 QnA 삭제하기
	public int deleteQna(Connection conn, String qnaId) throws Exception;
	
	// 12. 해당 상품의 QnA 등록하기
	public int writeQna(Connection conn, WrtieQnaDTO wrtie ) throws Exception;

	// 13. (데이터 수집) 사용자가 조회했던 중분류 카테고리 갖고오기
	public int collectView(Connection conn, String userId, String cateM) throws Exception;
	
	// 14. 상품 추천
	public List<ProductMoreDTO> proMore (Connection conn, String cateM) throws Exception;
	
} // interface
