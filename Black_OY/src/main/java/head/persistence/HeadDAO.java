package head.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import head.domain.GiftCardDTO;

public interface HeadDAO {
	// 1. 관심 매장 이름 리스트 얻어오기
	List<String> selectAttShopName(Connection conn, String user_id) throws SQLException;

	// 2. 기프트카드 전체 얻어오기
	List<GiftCardDTO> selectAllGiftCard(Connection conn) throws SQLException;

	// 3. 해당 아이디의 기트프카드 얻기
	GiftCardDTO selectOneGiftCard(Connection conn, String giftCard_id) throws SQLException;
}
