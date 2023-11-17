package search.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import product.domain.PlowcateDTO;
import product.persistence.PMidListDAOImpl;
import search.persistence.SearchDAOImpl;

public class SearchService {

	private SearchService() {};
	private static SearchService instance = null;
	public static SearchService getinstance() {
		if(   instance == null  ) {
			instance = new SearchService();
		}
		return instance;
	} 
	
	public List<String> searchWordService(String word){
		Connection conn = null;

		try {

			conn = ConnectionProvider.getConnection();
			SearchDAOImpl searchDAOImpl = SearchDAOImpl.getInstance();
			List<String> list = null;
			list = searchDAOImpl.searchWord(conn, word);
			System.out.println(list.toString());
			return list;

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">searchWordService_Exception");
		} finally {
			JDBCUtil.close(conn);
		}

		return null;
		
	}
	
}
