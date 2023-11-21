package search.persistence;

import java.sql.Connection;
import java.util.List;

import search.domain.BrandSearchDTO;
import search.domain.SearchDTO;

public interface SearchDAO {
	List<SearchDTO> searchWord(Connection conn, String word);
	
	BrandSearchDTO brandSearch(Connection conn, String word);
}
