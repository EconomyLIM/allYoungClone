package order.persistence;

import java.sql.Connection;
import java.util.List;

import order.domain.DeliveryDTO;
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
}
