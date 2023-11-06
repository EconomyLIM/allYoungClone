package store.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import store.domain.StoreDTO;

public interface StoreDAO {
	List<StoreDTO> storeSelectAll(Connection conn, String city, String district) throws SQLException;
}
