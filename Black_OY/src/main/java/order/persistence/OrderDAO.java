package order.persistence;

import java.sql.Connection;
import java.util.List;

import order.domain.DeliveryDTO;

public interface OrderDAO {
	
	List<DeliveryDTO> delivery(Connection conn, String user_id) throws Exception;
}
