package product.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import product.domain.MidCateDTO;
import product.domain.PMidListDTO;
import product.domain.PbrandListDTO;
import product.domain.PlowcateDTO;
import product.domain.TopCateDTO;
import product.persistence.PMidListDAOImpl;

public class PMidService {

	//싱글톤
	private PMidService() {}
	private static PMidService instance = null;
	public static PMidService getinstance() {
		if(   instance == null  ) {
			instance = new PMidService();
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
	/*
	public List<PMidListDTO> selectMproduct(String mNum, String sort){
		Connection conn = null;

		try {

			conn = ConnectionProvider.getConnection();
			PMidListDAOImpl pmidlistdaoImpl = PMidListDAOImpl.getInstance();
			List<PMidListDTO> list = pmidlistdaoImpl.selectMProList(conn, mNum, sort);
			return list;

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">PMidSurvice.selectMproduct_Exception");
		} finally {
			JDBCUtil.close(conn);
		} // try_catch

		return null;
	} // selectMproduct
	*/
	// 3-2. ProductList 가져오는 서비스 + 페이징 처리
		public List<PMidListDTO> selectMproduct(String mNum, String sort, int currentPage, int numberPerPage){
			Connection conn = null;

			try {

				conn = ConnectionProvider.getConnection();
				PMidListDAOImpl pmidlistdaoImpl = PMidListDAOImpl.getInstance();
				List<PMidListDTO> list = pmidlistdaoImpl.selectMProList(conn, mNum, sort, currentPage, numberPerPage);
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
	public List<TopCateDTO> selectTopCate(String mNum){
		
		Connection conn = null;
		List<TopCateDTO> list = null;
		try {
			conn = ConnectionProvider.getConnection();
			PMidListDAOImpl pmidlistdaoImpl = PMidListDAOImpl.getInstance();
			list = pmidlistdaoImpl.selectTop(conn, mNum);
		
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">PMidSurvice.selectTopCate_Exception");
		}//try-catch
		
		return list;
		
	} // selectTopCate

	// 상위에서 중위 카테고리 가져오는 작업
	public List<MidCateDTO> selectMidCate(String mNum){
		
		Connection conn = null;
		List<MidCateDTO> list = null;
		
		try {
			
			conn = ConnectionProvider.getConnection();
			PMidListDAOImpl pmidlistdaoImpl = PMidListDAOImpl.getInstance();
			list = pmidlistdaoImpl.selectMid(conn, mNum);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">PMidSurvice.selectTopCate_Exception");
		}//try-catch
		
		return list;
		
	} // selectMidCate

	// 전체 상품수를 가져오는 작업
	public int GTPService(int i, String cateM) {
		int temp = 0;
		
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			PMidListDAOImpl pmidlistdaoImpl = PMidListDAOImpl.getInstance();
			temp = pmidlistdaoImpl.getTotalPages(conn, i, cateM);
			
		} catch (Exception e) {
			System.out.println("GTPSurvice Survice Exception");
			e.printStackTrace();
		} //try_catch
		
		return temp;
	} // GTPSurvice
	
	public int GTRService(String mId) {
		int temp = 0;
		Connection conn = null;
		
		try {
			
			conn = ConnectionProvider.getConnection();
			PMidListDAOImpl pmidlistdaoImpl = PMidListDAOImpl.getInstance();
			temp = pmidlistdaoImpl.getTotalRecords(conn, mId);
			
		} catch (Exception e) {
			// TODO: handle exception
		} // try_catch
		
		return temp;
	} // GTRSERVICE

} // class
