package basket.persistence;

import java.sql.Connection;
import java.util.List;

import basket.domain.BasketDTO;

public interface BasketDAO {

	 List<BasketDTO> basketList(Connection conn, String user_id);
	 
	 int basketDelete(Connection conn, String user_id, String productid);
}
