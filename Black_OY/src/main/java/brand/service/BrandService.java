package brand.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import brand.domain.BrandDTO;
import brand.persistence.BrandDAO;
import brand.persistence.BrandDAOImpl;
import mypage.domain.MpPAskDTO;
import mypage.domain.MpUserInfoDTO;
import mypage.persistence.MyPageDAOImpl;
import product.service.PMidService;


public class BrandService {


	//싱글톤
	private BrandService() {}
	private static BrandService instance = null;
	public static BrandService getinstance() {
		if(   instance == null  ) {
			instance = new BrandService();
		}
		return instance;
	} // getinstance

	//브랜드 정보 가져오기 

	private BrandDAO brandDAO;

	public BrandService(BrandDAO brandDAO) {
		this.brandDAO = brandDAO;
	}

	public BrandDTO getBrandInfo(String brandId) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			BrandDTO brand = brandDAO.getBrands(brandId);
			return brand;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("> BrandService.getBrandInfo_Exception");
		} finally {
			JDBCUtil.close(conn);
		}
		return null;
	}
/*
	////브랜드제품  인기순 리스트 가져오기  , 베스트 상품 
	public List<BrandDTO> getProductsByCategory(String brandId, String catSId) throws Exception {
		List<BrandDTO> products = new ArrayList<>();
		Connection conn = null;

		try {
			conn = ConnectionProvider.getConnection();
			products = brandDAO.getProductsByCategory(conn,brandId, catSId);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("> BrandService.getProductsByCategory_Exception");
		} finally {
			JDBCUtil.close(conn);
		}

		return products;
	}
	*/
	

	////구달 브랜드 제품 신상품 순으로 가져오기
	public List<BrandDTO> getNewBrandsDetail() throws Exception {
		List<BrandDTO> newBrands = new ArrayList<>();
		Connection conn = null;

		try {
			conn = ConnectionProvider.getConnection();
			//newBrands = brandDAO.getNewBrandsDetail(conn);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("> BrandService.getNewBrandsDetail_Exception");
			// 여기에 로깅 또는 다른 예외 처리 로직을 추가할 수 있습니다.
		} finally {
			JDBCUtil.close(conn);
		}

		return newBrands;
	}

 
     /*
	// 브랜드 제품 낮은가격순으로 가져오기
	public List<BrandDTO> getProductsByCatSAndPrice(String brandId, String catSId) throws Exception {
		List<BrandDTO> products = new ArrayList<>();
		Connection conn = null;

		try {
			conn = ConnectionProvider.getConnection();
			products = brandDAO.getProductsByCatSAndPrice(brandId, catSId);
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("> BrandService.getProductsByCatSAndPrice_Exception");

		} finally {
			JDBCUtil.close(conn);
		}

		return products;
	}
	*/
    


	/*
	//판매순으로 가져오기  

	public List<BrandDTO> getSellProducts(String brand_Id, String cat_S_Id) throws Exception {
		List<BrandDTO> bsbrandpro = new ArrayList<>();
		Connection conn = null;

		try {
			conn = ConnectionProvider.getConnection();
			//bsbrandpro = BrandDAO.getSellProducts(conn, brand_Id, cat_S_Id);


		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("> ProductService.getSellProducts_Exception");

		} finally {
			JDBCUtil.close(conn);
		}

		return bsbrandpro;
	}// 브랜드 제품 낮은가격순으로 가져오기
	public List<BrandDTO> getProductsByCatSAndPrice(String brandId, String catSId) throws Exception {
		List<BrandDTO> products = new ArrayList<>();
		Connection conn = null;

		try {
			conn = ConnectionProvider.getConnection();
			products = brandDAO.getProductsByCatSAndPrice(brandId, catSId);
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("> BrandService.getProductsByCatSAndPrice_Exception");

		} finally {
			JDBCUtil.close(conn);
		}

		return products;
	}
	*/


   /*
	//리뷰가져오기 
	public List<BrandDTO> getReviews(String rev_Id) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			BrandDAOImpl brandDAO = BrandDAOImpl.getInstance(); 
			List<BrandDTO> reviews = brandDAO.selectReview(conn, rev_Id);
			return reviews;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("> BrandService.getReviews_Exception");
		} finally {
			JDBCUtil.close(conn);
		}
		return null;
	}


	//판매순으로 가져오기  ?? 왜 ?? 

	public List<BrandDTO> getSellProducts(String brand_Id, String cat_S_Id) throws Exception {
		List<BrandDTO> bsbrandpro = new ArrayList<>();
		Connection conn = null;

		try {
			conn = ConnectionProvider.getConnection();
			bsbrandpro = BrandDAO.getSellProducts(conn, brand_Id, cat_S_Id);

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("> ProductService.getSellProducts_Exception");

		} finally {
			JDBCUtil.close(conn);
		}

		return bsbrandpro;
	}
	*/
	
	// BrandHandler -> BrandService-> BarndDAO 
	// 




} // class









