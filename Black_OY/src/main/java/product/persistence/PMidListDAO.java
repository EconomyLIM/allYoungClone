package product.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import product.domain.MidCateDTO;
import product.domain.MnameIdDTO;
import product.domain.PCurNameDTO;
import product.domain.PMidListDTO;
import product.domain.PbrandListDTO;
import product.domain.PlowcateDTO;
import product.domain.TopCateDTO;

public interface PMidListDAO {
		
	// a. 중위 카테고리 고르면 상위 가져오기
	List<TopCateDTO> selectTop(Connection conn, String id) throws Exception;
	
	// b. 하위 카테고리 고르면 상위, 중위 가져오기
	List<MidCateDTO> selectMid(Connection conn, String id) throws Exception;
	
	// 1. 중분류안에 있는 하위 분류 리스트 가져오기
	List<PlowcateDTO> selectLowCate(Connection conn, String mId) throws Exception;
	
	// 2. 중분류 카테고리 안에 있는 상품을 파는 브랜드만 가져오기
	List<PbrandListDTO> selectBrand(Connection conn, String mId) throws Exception; 
	
	// 추가) 현재 카테고리의 이름과 상위 id 가져오기
	MnameIdDTO selectCurName(Connection conn, String mId) throws Exception; 
	
	// 3. 중분류 안에 있는 광고 이미지를 가져와야 함
	
	// 4. 중분류 안에 있는 상품이 몇개 있는지 출력해야함 << 6-1로 대체
	
	// 5.  *** 상품표시이미지, 브랜드, 상품표시명, 상품 원래 가격, 상품프로모션후 가격, 무슨 프로모션인지 갖고 와야 함
	//					ㄴ 첫번째는 인기순
//	List<PMidListDTO> selectMProList(Connection conn, String mId, String sort) throws Exception;
	List<PMidListDTO> selectMProList(Connection conn, int group, String Id, String sort, String brands[], int currentPage, int numberPerPage) throws Exception;
	
	
	// 6. 페이징 처리
	// 6-1. 총 레코드 수 가져오기
	// 6-1-a. 총 레코드 수 가져오기 (브랜드 검색 추가)
	int getTotalRecords(Connection conn, int group, String mId, String brands[])  throws SQLException;
	
	// 6-2. 총 페이지 구하기 
	// 6-2-a. 총 페이지 구하기 (브랜드 검색 추가) 
	int getTotalPages(Connection conn, int group, int numberPerPage, String mId, String brands[])  throws SQLException;
	
	// 7. 현재 선택된 카테고리 이름 가져오기
	PCurNameDTO curName(Connection conn, int group, String id) throws Exception;
	
	
} // interface
