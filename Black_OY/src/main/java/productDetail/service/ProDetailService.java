package productDetail.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import productDetail.domain.AllCateDTO;
import productDetail.domain.CateLDTO;
import productDetail.domain.CateMDTO;
import productDetail.domain.CateSDTO;
import productDetail.domain.ProDisplImgDTO;
import productDetail.domain.ProductInfo;
import productDetail.domain.ProductPromo;
import productDetail.persistence.ProDetailDAOImpl;

public class ProDetailService {

	//싱글톤
	private ProDetailService() {}
	private static ProDetailService instance = null;
	public static ProDetailService getinstance() {
		if(   instance == null  ) {
			instance = new ProDetailService();
		}
		return instance;
	} // getinstance
	
	public AllCateDTO sAllCate(String displId) {
		
		Connection conn = null;
		AllCateDTO allCateDTO = null;
		try {
			conn = ConnectionProvider.getConnection();
			ProDetailDAOImpl proDetailDAOImpl = ProDetailDAOImpl.getInstance();
			allCateDTO = proDetailDAOImpl.allCate(conn, displId);
			System.out.println(">ProDetailService sAllCate...");
			
		} catch (Exception e) {
			System.out.println("ProDetailSerivce sAllCate Exception");
			e.printStackTrace();
		} //catch
		
		return allCateDTO;
	} //sAllCate
	
	//====================== 현재 해당되는 대분류 카테고리 다 갖고오는 작업 =========================
	public List<CateLDTO> sSelectCLlist(int hId) {

		Connection conn = null;
		List<CateLDTO> list = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			ProDetailDAOImpl proDetailDAOImpl = ProDetailDAOImpl.getInstance();
			list = proDetailDAOImpl.selectCLlist(conn, hId);
			System.out.println(">ProDetailService sSelectCLlist...");
		} catch (Exception e) {
			System.out.println(">ProDetailSerivce sSelectCLlist Exception<");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		} // try_catch

		return list;
	} //sSelectCLlist
	
	//====================== 현재 해당되는 중분류 카테고리 다 갖고오는 작업 =========================
	public List<CateMDTO> sSelectMCList(String Lid){
		
		Connection conn = null;
		List<CateMDTO> list = null;
		
		try {
		
			conn = ConnectionProvider.getConnection();
			ProDetailDAOImpl proDetailDAOImpl = ProDetailDAOImpl.getInstance();
			list = proDetailDAOImpl.selectCMlist(conn, Lid);
			System.out.println(">ProDetailService sSelectMCList...");
		} catch (Exception e) {
			System.out.println(">ProDetailSerivce sSelectCLlist Exception<");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		return list;
	} // sSelectMCList
	
	//====================== 현재 해당되는 중분류 카테고리 다 갖고오는 작업 =========================
	public List<CateSDTO> sSelectSCList(String mId){
		Connection conn = null;
		List<CateSDTO> list = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			ProDetailDAOImpl proDetailDAOImpl = ProDetailDAOImpl.getInstance();
			list = proDetailDAOImpl.selectCSlist(conn, mId);
			System.out.println(">ProDetailService sSelectSCList...");
		} catch (Exception e) {
			System.out.println(">ProDetailSerivce sSelectSCList Exception<");
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		return list;
	} // sSelectSCList
	
	
	//====================== 현재 상품의 상단 정보를 갖고오는 작업 =========================
	public List<ProductInfo> sProductInfo(String pId){
		Connection conn = null;
		List<ProductInfo> list = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			ProDetailDAOImpl proDetailDAOImpl = ProDetailDAOImpl.getInstance();
			list = proDetailDAOImpl.productInfo(conn, pId);
			System.out.println(">ProDetailService_sProductInfo...");
		} catch (Exception e) {
			System.out.println("ProDetailSerivce sProductInfo Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		} // try_catch

		return list;
	} //sProductInfo
	
	//====================== 현재 상품의 프로모션을 갖고오는 작업 =========================
	public ProductPromo sProductPromo(String displId) {
		Connection conn = null;
		ProductPromo productPromo = null;
		try {
			conn = ConnectionProvider.getConnection();
			ProDetailDAOImpl proDetailDAOImpl = ProDetailDAOImpl.getInstance();
			productPromo = proDetailDAOImpl.productPromo(conn, displId);
			System.out.println(">ProDetailService sProductPromo...");
			
		} catch (Exception e) {
			System.out.println("ProDetailSerivce sProductPromo Exception");
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		return productPromo;
	}
	
	//====================== 현재 상품의 이미지를 갖고오는 작업 =========================
	public List<ProDisplImgDTO> sProductImgs(String displId) {
		Connection conn = null;
		List<ProDisplImgDTO> list = null;
		
		try {
			
			conn = ConnectionProvider.getConnection();
			ProDetailDAOImpl proDetailDAOImpl = ProDetailDAOImpl.getInstance();
			list = proDetailDAOImpl.productImgs(conn, displId);
			System.out.println(">ProDetailService sProductPromo...");
			
		} catch (Exception e) {
			System.out.println("ProDetailSerivce sProductImgs Exception");
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		return list;
	} // sProductImgs
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

} // class
