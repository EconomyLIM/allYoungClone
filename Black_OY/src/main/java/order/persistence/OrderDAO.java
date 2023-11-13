package order.persistence;

import java.sql.Connection;
import java.util.List;

import order.domain.DeliveryDTO;

public interface OrderDAO {
	// 1. 회원이 등록한 배송지 리스트를 얻는 함수
	List<DeliveryDTO> SelectAllDelivery(Connection conn, String user_id) throws Exception;
	
	// 2. 회원의 기본 배송지를 얻는 함수
	DeliveryDTO SelectOneDelivery(Connection conn, String user_id) throws Exception;
}
