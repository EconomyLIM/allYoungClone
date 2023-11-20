package head.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import head.domain.CateMDTO;
import head.domain.EventDTO;
import head.domain.GiftCardDTO;
import head.domain.ProductHistoryDTO;
import product.domain.PMidListDTO;
import productDetail.domain.CateLDTO;

public interface HeadDAO {
	// 1. 관심 매장 이름 리스트 얻어오기
	List<String> selectAttShopName(Connection conn, String user_id) throws SQLException;

	// 2. 기프트카드 전체 얻어오기
	List<GiftCardDTO> selectAllGiftCard(Connection conn) throws SQLException;

	// 3. 해당 아이디의 기트프카드 얻기
	GiftCardDTO selectOneGiftCard(Connection conn, String giftCard_id) throws SQLException;

	// 4. 이벤트 리스트 전체 얻어오기
	List<EventDTO> selectAllEvent(Connection conn, String type) throws SQLException;

	// 5. 선택한 이벤트 얻어오기
	EventDTO selectOneEvent(Connection conn, String event_id) throws SQLException;

	// 6. 판매별 카테고리 중분류 이름 얻어오기
	List<CateMDTO> selectCateMName(Connection conn) throws SQLException;
	
	// 7. 최근 본 상품
	ProductHistoryDTO productHistory(Connection conn, String pro_id) throws Exception;

	// 8. 판매별 랭킹
	List<PMidListDTO> selectSalesRanking(Connection conn, String mid) throws Exception;
	
	// 9. 대분류 카테고리 정보 갖고오기
	List<CateLDTO> getCateL(Connection conn, int cate) throws Exception;
	
	// 10. 중분류 카테고리 갖고오기
	Map<CateLDTO, List<CateMDTO>> getCate(Connection conn, int cate) throws Exception;
	
}
