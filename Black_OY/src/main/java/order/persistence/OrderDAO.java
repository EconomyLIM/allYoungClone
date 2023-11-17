package order.persistence;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import order.domain.DeliveryDTO;
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

	int insertToday(Connection conn, Map<String, Object> map) throws Exception;
	
	// 12. 픽업 insert
	int insertPickup(Connection conn, Map<String, Object> map) throws Exception;


}
