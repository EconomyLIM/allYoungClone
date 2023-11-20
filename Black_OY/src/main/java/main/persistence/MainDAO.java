package main.persistence;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;

import main.domain.BrandItemDTO;
import main.domain.MainBrandDTO;
import main.domain.MainUserDTO;
import main.domain.PlanShopDisplDTO;
import main.domain.PopularProDTO;
import product.domain.PMidListDTO;

public interface MainDAO {

	// 1. 로그인한 사람의 정보를 갖고오는 작업
	public MainUserDTO selectUserInfo (Connection conn, String userId) throws Exception;
	
	// 2. 로그인한 사람과 비슷한 아이디를 갖고오는 작업
	public List<String> similarUser(Connection conn, MainUserDTO dto) throws Exception;
	
	// 3. 비슷한 아이디가 구매한 상품ID를 갖고오는 작업
	public List<String> similarProduct(Connection conn, List<String> list) throws Exception; 
	
	// 4. 갖고온 상품 ID의 정보들을 갖고오는 작업
	public List<PMidListDTO> similardispl (Connection conn, List<String> list) throws Exception;
	
	// 5. 로그인한 유저가 가장많이본 중분류 카테고리를 갖고오는 작업
	public List<String> getMidList(Connection conn, String userId) throws Exception;
	
	// 6번 초기 작업--> 총 몇개인지 갖고오기
	public int getListCount(Connection conn, List<String> cateMlist) throws Exception;
	
	// 6. 갖고온 중분류 카테고리를 갖고 상품리스트 갖고오기
	public List<PMidListDTO> recommendProduct(Connection conn, List<String> cateMlist) throws Exception;
	
	// 7. 배너와 정보를 갖고오는 작업
	public List<PlanShopDisplDTO> getPlanShop(Connection conn, int cate) throws Exception;
	

	// 8. 인기 행사의 배너정보와 상품을 갖고오는 작업
	public HashMap<PlanShopDisplDTO, List<PopularProDTO>> getPopularShop(Connection conn) throws Exception;
  
  // 메인 브랜드 좋아요 상위 10개 가져오기
	public List<MainBrandDTO> mainBrand(Connection conn) throws Exception;
	
	// 브랜드 상위 2개 상품 가져오기
	public List<BrandItemDTO> mainBrandItem(Connection conn, String brand_id) throws Exception;

	
} // interface
