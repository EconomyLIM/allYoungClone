package basket.persistence;

import java.sql.Connection;
import java.util.List;

import basket.domain.BasketDTO;
import basket.domain.ItemListDTO;

public interface BasketDAO {

	 List<BasketDTO> basketList(Connection conn, String user_id, String quickYn);
	 
	 int basketDelete(Connection conn, String user_id, String productid, String quickYn);
	 
	 int basketAdd(Connection conn, String user_id, String productid, String quickyn, int product_cnt);
	 
	 // 장바구니 중복체크 , 장바구니에 있으면 1 없으면 0
	 int basketCheck(Connection conn, String user_id, String productid);
	 
	 List<ItemListDTO> itemList(Connection conn, String displID);
	 
	 // 장바구니에 있을경우 업데이트
	 int basketUpdate(Connection conn,String user_id, String productid);
	 // 장바구니에 없을경우 insert
	 int basketinsert(Connection conn,String user_id, String productid);
}
