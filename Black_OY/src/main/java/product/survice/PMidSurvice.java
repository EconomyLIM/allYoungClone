package product.survice;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import product.domain.PlowcateDTO;
import product.persistence.PMidListDAOImpl;

public class PMidSurvice {

	// 1. 싱글톤
	private PMidSurvice() {}
	private static PMidSurvice instance = null;
	public static PMidSurvice getinstance() {
		if(   instance == null  ) {
			instance = new PMidSurvice();
		}
		return instance;
	} // getinstance
	
	// 1. lowCate 가져오는 서비스
	public List<PlowcateDTO> selectLowCate(){
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			PMidListDAOImpl pmidlistdaoImpl = PMidListDAOImpl.getInstance();
			List<PlowcateDTO> list = null;
			list = pmidlistdaoImpl.selectLowCate(conn, 0);
			return list;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">PMidSurvice.selectLowCate_Exception");
		} finally {
			JDBCUtil.close(conn);
		}
		return null;
		
	} // selectLowCate
	
} // class
