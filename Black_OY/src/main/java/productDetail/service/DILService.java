package productDetail.service;

import java.sql.Connection;

import com.util.ConnectionProvider;

import productDetail.persistence.DBLDAOImpl;
import productDetail.persistence.DILDAOImpl;

public class DILService {

	// 싱글톤
	private DILService() {}
	private static DILService instance = null;
	public static DILService getinstance() {
		if(   instance == null  ) {
			instance = new DILService();
		}
		return instance;
	} // getinstance

	public boolean sIsLiked(String userId, String proid) {

		Connection conn =null;
		boolean isLiked = false;
		try {

			conn = ConnectionProvider.getConnection();
			DILDAOImpl dildaoImpl = DILDAOImpl.getInstance();
			isLiked = dildaoImpl.isLiked(conn, userId, proid);

		} catch (Exception e) {
			System.out.println(">dilservice sIsLiked Exception ");
			e.printStackTrace();
		} // try_catch

		return isLiked;
	} // sIsLiked
	
	
	 public boolean toggleLike(String userId, String proid) {
	        if (sIsLiked(userId, proid)) {
	            return sRemoveLiked(userId, proid);
	        } else {
	            return sAddLiked(userId, proid);
	        }
	    } // toggleLike

	public boolean sAddLiked(String userId, String proid) {
		Connection conn =null;
		boolean addLike = false;
		
		try {
			conn = ConnectionProvider.getConnection();
			DILDAOImpl dildaoImpl = DILDAOImpl.getInstance();
			addLike = dildaoImpl.addLike(conn, userId, proid);
		} catch (Exception e) {
			System.out.println(">dilservice sIsLiked Exception ");
			e.printStackTrace();
		} // try_catch
		
		return addLike;
	} // sAddLiked

	public boolean sRemoveLiked(String userId, String proid) {
		Connection conn =null;
		boolean removeLike = false;
		
		try {
			conn = ConnectionProvider.getConnection();
			DILDAOImpl dildaoImpl = DILDAOImpl.getInstance();
			removeLike = dildaoImpl.removeLike(conn, userId, proid);
		} catch (Exception e) {
			System.out.println(">dilservice sIsLiked Exception ");
			e.printStackTrace();
		} // try_catch

		return removeLike;
	} // sRemoveLiked



} // class
