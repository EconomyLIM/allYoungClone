package basket.persistence;

import java.sql.Connection;
import java.util.List;

import basket.domain.BasketDTO;

public interface BasketDAO {

	 List<BasketDTO> basketList(Connection conn, String user_id, String quickYn);
	 
	 int basketDelete(Connection conn, String user_id, String productid, String quickYn);
	 
	 int basketAdd(Connection conn, String user_id, String productid, String quickyn, int product_cnt);
}
