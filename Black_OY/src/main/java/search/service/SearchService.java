package search.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import product.domain.PlowcateDTO;
import product.persistence.PMidListDAOImpl;
import search.domain.BrandSearchDTO;
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
			for (int i = 0; i < list.size(); i++) {
	            String item = list.get(i);

	            // 만약 리스트의 항목에 해당 단어가 포함되어 있다면 변경
	            if (item.contains(word)) {
	                item = item.replaceAll(word, "<span>" + word + "</span>");
	                list.set(i, item); // 변경된 문자열로 대체
	            }
	        }
			
			return list;

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">searchWordService_Exception");
		} finally {
			JDBCUtil.close(conn);
		}

		return null;
		
	}
	
	public BrandSearchDTO BrandsearchWordService(String word){
		Connection conn = null;

		try {

			conn = ConnectionProvider.getConnection();
			SearchDAOImpl searchDAOImpl = SearchDAOImpl.getInstance();
			BrandSearchDTO brandSearchDTO = null;
			brandSearchDTO = searchDAOImpl.brandSearch(conn, word);
				
			return brandSearchDTO;

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">BrandsearchWordService.exception");
		} finally {
			JDBCUtil.close(conn);
		}

		return null;
		
	}
	
}
