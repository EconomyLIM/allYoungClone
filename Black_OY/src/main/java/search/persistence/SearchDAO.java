package search.persistence;

import java.sql.Connection;
import java.util.List;

import search.domain.BrandSearchDTO;

public interface SearchDAO {
	List<String> searchWord(Connection conn, String word);
	
	BrandSearchDTO brandSearch(Connection conn, String word);
}
