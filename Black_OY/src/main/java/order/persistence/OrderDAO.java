package order.persistence;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import order.domain.DeliveryDTO;
import order.domain.PaymentDTO;
import order.domain.ProductInfo;
import order.domain.UserCouponDTO;


public interface OrderDAO {
	// 1. 회원이 등록한 배송지 리스트를 얻는 함수
	List<DeliveryDTO> selectAllDelivery(Connection conn, String user_id) throws Exception;
	
	// 2. 회원의 기본 배송지를 얻는 함수
	DeliveryDTO selectOneDelivery(Connection conn, String user_id) throws Exception;
	
	// 3. 배송지 ID의 배송지 정보 얻기
	DeliveryDTO selectOneDeliveryID(Connection conn, String delevery_id) throws Exception;
	
	// 4. 유저가 가지고 있는 쿠폰 리스트 얻기
	List<UserCouponDTO> selectCouponList(Connection conn, String user_id) throws Exception;
	
	// 5. 주문요청한 상품들의 정보를 가져오는 함수
	List<ProductInfo> selectProductList(Connection conn, String[] product_id) throws Exception;

	// 6. 주문 테이블 insert
	int insertOrder(Connection conn, Map<String, Object> map) throws Exception;

	// 7. 결제 테이블 insert
	int insertPayment(Connection conn, Map<String, Object> map) throws Exception;
	
	// 8. 주문한 상품 insert
	int insertOrderProduct(Connection conn, String product_id, int product_cnt, String cat_m_id) throws Exception;
	
	// 9. 중분류 ID 얻어오기
	String selectCatMID(Connection conn, String pro_id) throws Exception;

	// 10. 결제 후 유저 포인트 업데이트
	int updateUserPoint(Connection conn, String user_id, int point) throws Exception;

	// 11. 오늘드림 insert
	int insertToday(Connection conn, Map<String, Object> map) throws Exception;
	
	// 12. 픽업 insert
	int insertPickup(Connection conn, Map<String, Object> map) throws Exception;
	
	// 13. 주문한 주문ID 가져오기
	String selectCurrOrderID(Connection conn) throws Exception;

	// 14. 선물하기 주문 insert
	int insertGiftOrder(Connection conn, Map<String, Object> map) throws Exception;

	// 15. 선물하기 결제 insert
	int inserGiftPay(Connection conn, Map<String, Object> map) throws Exception;

	// 16. 선물 테이블 insert
	int insertGift(Connection conn, Map<String, Object> map) throws Exception;
	
	// 17. 주문 시 수량 update
	int updateProStuck(Connection conn, String pro_id, int cnt) throws Exception;
	
	// 18. 장바구니에서 주문 시 장바구니 테이블 삭제
	int deleteCart(Connection conn, String user_id, String pro_id) throws Exception;
	
	// 19. cjONEPOINT 적립하기
	int insertCJPoint(Connection conn, String user_id, String p_content, String p_state) throws Exception;

	// 20. 상품의 재고가 있는지 확인
	int selectIsProStock(Connection conn, String pro_id) throws Exception;

	// 21. 해당 주문ID의 결제 정보 얻어오기
	PaymentDTO selectOnePayment(Connection conn, String order_id) throws Exception;

	// 22. 주문ID로 배송지 얻어오기
	DeliveryDTO selectOrderDelivery(Connection conn, String order_id) throws Exception;


}
