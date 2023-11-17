package mypage.like.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import mypage.like.domain.BLikeDTO;
import mypage.like.persistence.LikeDAOImpl;
import mypage.main.domain.MpPlikeDTO;

public class LikeService {
	
	private static LikeService instance = null;
	private LikeService() {}
	public static LikeService getinstance() {
		if (instance == null) {
			instance = new LikeService();
		}
		return instance;
	}
	
	//1. 좋아요 상품 목록 가져오기 서비스
	public List<MpPlikeDTO> plListservice(String uId){
		Connection conn = null;
		try {
			
			conn = ConnectionProvider.getConnection();
			LikeDAOImpl daoImpl = LikeDAOImpl.getinstance();
			List<MpPlikeDTO> list = null;
			list = daoImpl.selectPlike(conn, uId);
			return list;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> LikeService.plListservice_Exception ");
		} finally {
			JDBCUtil.close(conn);
		}
		return null;
	}
	
	
	//2. 좋아요 상품 삭제하기 서비스
	public int plDelservice(String uId, String plpdispId) {
		Connection conn = null;
		try {
			
			conn = ConnectionProvider.getConnection();
			LikeDAOImpl daoImpl = LikeDAOImpl.getinstance();
			int rownum = 0;
			rownum = daoImpl.deletePlike(conn, uId, plpdispId);
			return rownum;			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> LikeService.plDelservice_Exception ");
		}finally {
			JDBCUtil.close(conn);
		}
		return 0;
	}
	
	//3. 좋아요 상품 전체 삭제 서비스
	public int plDelAllservice(String uId) {
		Connection conn = null;
		try {
			
			conn = ConnectionProvider.getConnection();
			LikeDAOImpl daoImpl = LikeDAOImpl.getinstance();
			int rownum = 0;
			rownum = daoImpl.deletePlikeAll(conn, uId);
			return rownum;			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> LikeService.plDelAllservice_Exception ");
		} finally {
			JDBCUtil.close(conn);
		}
		return 0;
	}
	
	//4. 브랜드 좋아요 목록 가져오기 서비스
	public List<BLikeDTO> blListservice(String uId) {
		Connection conn = null;
		try {
			
			conn = ConnectionProvider.getConnection();
			LikeDAOImpl daoImpl = LikeDAOImpl.getinstance();
			List<BLikeDTO> list = null;
			list = daoImpl.selectBlike(conn, uId);
			return list;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> LikeService.blListservice_Exception ");
		} finally {
			JDBCUtil.close(conn);
		}
		return null;
	}
	
	//5. 브랜드 좋아요 삭제 서비스
	public int blDelservice(String uId, String brandId) {
		Connection conn = null;
		try {
			
			conn = ConnectionProvider.getConnection();
			LikeDAOImpl daoImpl = LikeDAOImpl.getinstance();
			int rownum = 0;
			rownum = daoImpl.deleteBlike(conn, uId, brandId);
			return rownum;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> LikeService.blDelservice_Exception ");
		} finally {
			JDBCUtil.close(conn);
		}
		return 0;
	}
	
 	//6. 브랜드 좋아요 전체 삭제 서비스
	public int blDelAllservice(String uId) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			LikeDAOImpl daoImpl = LikeDAOImpl.getinstance();
			int rownum = 0;
			rownum = daoImpl.deleteBlikeAll(conn, uId);
			return rownum;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> LikeService.blDelAllservice_Exception ");
		} finally {
			JDBCUtil.close(conn);
		}
		return 0;
	}
	
}
