package mypage.profile.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import mypage.profile.domain.PfIntCateDTO;
import mypage.profile.domain.PfSkinTrbDTO;
import mypage.profile.domain.ProfileDTO;
import mypage.profile.persistence.ProfileDAOImpl;

public class ProfileService {
	
	private static ProfileService instance = null;
	private ProfileService() {}
	public static ProfileService getinstance() {
		if (instance == null) {
			instance = new ProfileService();
		}
		return instance;
	}
	
	//1.	나의 프로필 정보 가져오기 서비스 
	public List<ProfileDTO> pfinfoService(String uId){
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			ProfileDAOImpl daoImpl = ProfileDAOImpl.getinstance();
			List<ProfileDTO> list = null;
			list = daoImpl.selectProfile(conn, uId);
			return list;	
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> ProfileService pfinfoService Exception");
		} finally {
			JDBCUtil.close(conn);
		}
		return null;
	}
	
	//2.	피부고민 가져오기 서비스
	public List<PfSkinTrbDTO> pfstrService(String uId){
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			ProfileDAOImpl daoImpl = ProfileDAOImpl.getinstance();
			List<PfSkinTrbDTO> list = null;
			list = daoImpl.selectSkinTrouble(conn, uId);
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> ProfileService pfstrService Exception");
			
		}finally {
			JDBCUtil.close(conn);
		}
		return null;
	}
	
	//3.	관심카테고리 가져오기 서비스
	public List<PfIntCateDTO> pfintcateService(String uId){
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			ProfileDAOImpl daoImpl = ProfileDAOImpl.getinstance();
			List<PfIntCateDTO> list = null;
			list = daoImpl.selectIntCate(conn, uId);
			return list;
		} catch (Exception e) {
			// TODO: handle 
			e.printStackTrace();
			System.out.println("> ProfileService pfintcateService Exception");
		} finally {
			JDBCUtil.close(conn);
		}
		return null;
	}
	
	//4.	나의 프로필 수정하기 서비스
	public int pfeditService(String uId, String nickN, String pfCon, String sTone, String sType, String uimgsrc) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			ProfileDAOImpl daoImpl = ProfileDAOImpl.getinstance();
			int result = 0;
			result = daoImpl.updateProfile(conn, uId, nickN, pfCon, sTone, sType, uimgsrc);
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> ProfileService pfeditService Exception");
			
		} finally {
			JDBCUtil.close(conn);
		}
		return 0;
	}
	
	//5.	피부고민 삽입하기 서비스
	public int pfinsStrService(String uId, List<String> skinTrouble) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			ProfileDAOImpl daoImpl = ProfileDAOImpl.getinstance();
			int result = 0;
			result = daoImpl.insertSkinTrouble(conn, uId, skinTrouble);
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> ProfileService pfeditService Exception");
		} finally {
			JDBCUtil.close(conn);
		}
		return 0;
	}
	
	//6.	관심카테고리 삽입하기
	public int pfinsIntCateService(String uId, List<String> intCate ) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			ProfileDAOImpl daoImpl = ProfileDAOImpl.getinstance();
			int result = 0;
			result = daoImpl.insertIntCate(conn, uId, intCate);
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> ProfileService pfinsIntCateService Exception");
		} finally {
			JDBCUtil.close(conn);
		}
		return 0;
	}
	
	//7.	피부고민 전부 삭제하기
	public int pfdelstrService(String uId) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			ProfileDAOImpl daoImpl = ProfileDAOImpl.getinstance();
			int result = 0;
			result = daoImpl.deleteSkinTroubleAll(conn, uId);
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> ProfileService pfdelstrService Exception");
			
		}finally {
			JDBCUtil.close(conn);
		}
		return 0;
	}
	
	//8.	관심카테고리 전부 삭제하기
	public int pfdelIntCateService(String uId) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			ProfileDAOImpl daoImpl = ProfileDAOImpl.getinstance();
			int result = 0;
			return result;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> ProfileService pfdelIntCateService Exception");
			
		}finally {
			JDBCUtil.close(conn);
		}
		return 0;
	}
	
}
