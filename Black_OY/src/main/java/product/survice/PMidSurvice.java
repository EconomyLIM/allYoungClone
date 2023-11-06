package product.survice;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import product.domain.PMidListDTO;
import product.domain.PbrandListDTO;
import product.domain.PlowcateDTO;
import product.domain.TopCateDTO;
import product.persistence.PMidListDAOImpl;

public class PMidSurvice {

	//싱글톤
	private PMidSurvice() {}
	private static PMidSurvice instance = null;
	public static PMidSurvice getinstance() {
		if(   instance == null  ) {
			instance = new PMidSurvice();
		}
		return instance;
	} // getinstance

	// ===============================================================
	// 1. lowCate 가져오는 서비스
	public List<PlowcateDTO> selectLowCate(String mNum){

		Connection conn = null;

		try {

			conn = ConnectionProvider.getConnection();
			PMidListDAOImpl pmidlistdaoImpl = PMidListDAOImpl.getInstance();
			List<PlowcateDTO> list = null;
			list = pmidlistdaoImpl.selectLowCate(conn, mNum);
			return list;

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">PMidSurvice.selectLowCate_Exception");
		} finally {
			JDBCUtil.close(conn);
		}

		return null;

	} // selectLowCate

	// 2. BrandList 가져오는 서비스
	public List<PbrandListDTO> selectBrand(String mNum){

		Connection conn = null;

		try {

			conn = ConnectionProvider.getConnection();
			PMidListDAOImpl pmidlistdaoImpl = PMidListDAOImpl.getInstance();
			List<PbrandListDTO> list = pmidlistdaoImpl.selectBrand(conn, mNum);
			return list;

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">PMidSurvice.selectLowCate_Exception");
		} finally {
			JDBCUtil.close(conn);
		} // try_catch

		return null;
	} // selectBrand

	// 3. ProductList 가져오는 서비스
	public List<PMidListDTO> selectMproduct(String mNum){
		Connection conn = null;

		try {

			conn = ConnectionProvider.getConnection();
			PMidListDAOImpl pmidlistdaoImpl = PMidListDAOImpl.getInstance();
			List<PMidListDTO> list = pmidlistdaoImpl.selectMProList(conn, mNum);
			return list;

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">PMidSurvice.selectMproduct_Exception");
		} finally {
			JDBCUtil.close(conn);
		} // try_catch

		return null;
	} // selectMproduct
	
	// 상위 카테고리를 가져오는 작업
	public List<TopCateDTO> selectTopCate(String id){
		
		Connection conn = null;
		List<TopCateDTO> list = null;
		try {
			conn = ConnectionProvider.getConnection();
			PMidListDAOImpl pmidlistdaoImpl = PMidListDAOImpl.getInstance();
			list = pmidlistdaoImpl.selectTop(conn, id);
		
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">PMidSurvice.selectTopCate_Exception");
		}//try-catch
		
		return list;
		
	} // selectTopCate



} // class
