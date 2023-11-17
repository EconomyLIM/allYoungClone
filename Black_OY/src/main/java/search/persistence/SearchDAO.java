package search.persistence;

import java.sql.Connection;
import java.util.List;

public interface SearchDAO {
	List<String> searchWord(Connection conn, String word);
}
