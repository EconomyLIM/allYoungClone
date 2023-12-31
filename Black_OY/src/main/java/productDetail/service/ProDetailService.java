package productDetail.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import productDetail.domain.AllCateDTO;
import productDetail.domain.CateLDTO;
import productDetail.domain.CateMDTO;
import productDetail.domain.CateSDTO;
import productDetail.domain.DetailBrandDTO;
import productDetail.domain.DetailExImgDTO;
import productDetail.domain.DetailInfoDTO;
import productDetail.domain.ProDisplImgDTO;
import productDetail.domain.ProductInfo;
import productDetail.domain.ProductMoreDTO;
import productDetail.domain.ProductPromo;
import productDetail.domain.QnADetailDTO;
import productDetail.domain.WrtieQnaDTO;
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
	
	//====================== 현재 상품의 설명 이미지를 갖고오는 작업 =========================
	public List<DetailExImgDTO> sDetailExImg (String displId){
		
		Connection conn = null;
		List<DetailExImgDTO> list = null;
		
		try {
			
			conn = ConnectionProvider.getConnection();
			ProDetailDAOImpl proDetailDAOImpl = ProDetailDAOImpl.getInstance();
			list = proDetailDAOImpl.detailExImg(conn, displId);
			
		} catch (Exception e) {
			
			System.out.println("ProDetailSerivce sDetailExImg Exception");
			e.printStackTrace();
			
		} finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		return list;
		
	} // sDetailExImg
	
	//====================== 해당 상품의 브랜드 정보를 갖고오는 작업 =========================
	public DetailBrandDTO sDetailBrand(String displId) {
		
		Connection conn = null;
		DetailBrandDTO detailBrandDTO = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			ProDetailDAOImpl proDetailDAOImpl = ProDetailDAOImpl.getInstance();
			detailBrandDTO = proDetailDAOImpl.detailBrand(conn, displId);
			
		}catch (Exception e) {
			
			System.out.println("ProDetailSerivce sDetailExImg Exception");
			e.printStackTrace();
			
		} finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		return detailBrandDTO;
		
	} // sDetailBrand
	
	//====================== 해당 상품의 구매(상세) 정보를 갖고오는 작업 =========================
	public DetailInfoDTO sDetailInfo (String displId) {
		
		Connection conn = null;
		DetailInfoDTO detailInfoDTO = null;
		
		try {
		
			conn = ConnectionProvider.getConnection();
			ProDetailDAOImpl proDetailDAOImpl = ProDetailDAOImpl.getInstance();
			detailInfoDTO = proDetailDAOImpl.detailInfo(conn, displId);
			System.out.println("> sDetailInfo Service call ");
		} catch (Exception e) {
			System.out.println("ProDetailSerivce sDetailInfo Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		return detailInfoDTO;
	} // sDetailInfo
	
	//====================== 해당 상품의 QNA를 갖고오는 작업 =========================
	public List<QnADetailDTO> sDetailQna(String displId) {
		
		Connection conn = null;
		List<QnADetailDTO> list = null;
		
		try {
			
			conn = ConnectionProvider.getConnection();
			ProDetailDAOImpl proDetailDAOImpl = ProDetailDAOImpl.getInstance();
			list = proDetailDAOImpl.detailQna(conn, displId);
			System.out.println("> sDetailInfo Service call..");
			
		} catch (Exception e) {
			System.out.println("ProDetailSerivce sDetailQna Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		return list;
	} // sDetailQna
	
	//====================== 해당 QNA를 삭제하는 작업 =========================
	public int sDeleteQna (String qnaId) {
		Connection conn = null;
		int rowCnt = 0;
		
		try {
			
			conn = ConnectionProvider.getConnection();
			ProDetailDAOImpl proDetailDAOImpl = ProDetailDAOImpl.getInstance();
			rowCnt = proDetailDAOImpl.deleteQna(conn, qnaId);
			System.out.println("> sDetailInfo sDeleteQna call..");
			
		} catch (Exception e) {
			System.out.println("ProDetailSerivce sDeleteQna Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		return rowCnt; 
		
	} // sDeleteQna
	
	//====================== QNA를 등록하는 작업 =========================
	public int sWriteQna (WrtieQnaDTO writeQna) {
		
		int rowCnt = 0;
		Connection conn = null;
		
		try {
			
			conn = ConnectionProvider.getConnection();
			ProDetailDAOImpl proDetailDAOImpl = ProDetailDAOImpl.getInstance();
			rowCnt = proDetailDAOImpl.writeQna(conn, writeQna);
			System.out.println("> sDetailInfo sWriteQna call..");
			
		} catch (Exception e) {
			System.out.println("ProDetailSerivce sWriteQna Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		return rowCnt; 
	} // sWriteQna
	
	// ================== (데이터 수집) 사용자가 조회했던 중분류 카테고리 갖고오기 ===================
	public int sCollectView (String userId, String cateM) {
		Connection conn = null;
		int rowCnt = 0;
		
		try {
			conn = ConnectionProvider.getConnection();
			ProDetailDAOImpl proDetailDAOImpl = ProDetailDAOImpl.getInstance();
			rowCnt = proDetailDAOImpl.collectView(conn, userId, cateM);
			
			System.out.println("> sDetailInfo sCollectView call..");
			if (rowCnt == 1) {
				System.out.println("> sDetailInfo sCollectView Insert Success..");
			}
		} catch (Exception e) {
			System.out.println("ProDetailSerivce sCollectView Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		return rowCnt;
	} // sCollectView
	
	// 상품 추천
	public List<ProductMoreDTO> promoreService(String cateM){
		Connection conn = null;
		List<ProductMoreDTO> list = null;
		
		try {
			
			conn = ConnectionProvider.getConnection();
			ProDetailDAOImpl proDetailDAOImpl = ProDetailDAOImpl.getInstance();
			list = proDetailDAOImpl.proMore(conn, cateM);
			System.out.println("> promoreService  call..");
			
		} catch (Exception e) {
			System.out.println("promoreService Exception");
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		} // try_catch
		
		return list;
	}//promoreService
	

} // class
