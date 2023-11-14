package productDetail.persistence;

import java.sql.Connection;
import java.util.List;

import productDetail.domain.AllCateDTO;
import productDetail.domain.CateLDTO;
import productDetail.domain.CateMDTO;
import productDetail.domain.CateSDTO;
import productDetail.domain.DetailBrandDTO;
import productDetail.domain.DetailExImgDTO;
import productDetail.domain.ProDisplImgDTO;
import productDetail.domain.ProductInfo;
import productDetail.domain.ProductPromo;

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
	

	
} // interface