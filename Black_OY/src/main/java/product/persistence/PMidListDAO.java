package product.persistence;

import java.sql.Connection;
import java.util.List;

import product.domain.PbrandListDTO;
import product.domain.PlowcateDTO;

public interface PMidListDAO {
		
	// 1. 중분류안에 있는 하위 분류 리스트 가져오기
	List<PlowcateDTO> selectLowCate(Connection conn, int mId) throws Exception;
	
	// 2. 중분류 카테고리 안에 있는 상품을 파는 브랜드만 가져오기
	List<PbrandListDTO> selectBrand(Connection con, int mId) throws Exception; 
	
	// 3. 중분류 안에 있는 광고 이미지를 가져와야 함
	
	// 4. 중분류 안에 있는 상품이 몇개 있는지 출력해야함
	
	// 5.  *** 상품표시이미지, 브랜드, 상품표시명, 상품 원래 가격, 상품프로모션후 가격, 무슨 프로모션인지 갖고 와야 함
	//					ㄴ 첫번째는 인기순
	
	// 6. 페이징 처리
	
	
	
} // interface
