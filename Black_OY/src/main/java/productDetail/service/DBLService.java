package productDetail.service;

import java.sql.Connection;

import com.util.ConnectionProvider;

import productDetail.persistence.DBLDAOImpl;

public class DBLService {

	// 싱글톤
	private DBLService() {}
	private static DBLService instance = null;
	public static DBLService getinstance() {
		if(   instance == null  ) {
			instance = new DBLService();
		}
		return instance;
	} // getinstance

	public boolean sIsLiked(String userId, String brandId) {

		Connection conn =null;
		boolean isLiked = false;
		try {

			conn = ConnectionProvider.getConnection();
			DBLDAOImpl dbldaoImpl = DBLDAOImpl.getInstance();
			isLiked = dbldaoImpl.isLiked(conn, userId, brandId);

		} catch (Exception e) {
			System.out.println(">DBLService sIsLiked Exception ");
			e.printStackTrace();
		} // try_catch

		return isLiked;
	} // sIsLiked
	
	
	 public boolean toggleLike(String userId, String productId) {
	        if (sIsLiked(userId, productId)) {
	            return sRemoveLiked(userId, productId);
	        } else {
	            return sAddLiked(userId, productId);
	        }
	    } // toggleLike

	public boolean sAddLiked(String userId, String brandId) {
		Connection conn =null;
		boolean addLike = false;
		
		try {
			conn = ConnectionProvider.getConnection();
			DBLDAOImpl dbldaoImpl = DBLDAOImpl.getInstance();
			addLike = dbldaoImpl.addLike(conn, userId, brandId);
		} catch (Exception e) {
			System.out.println(">DBLService sIsLiked Exception ");
			e.printStackTrace();
		} // try_catch
		
		return addLike;
	} // sAddLiked

	public boolean sRemoveLiked(String userId, String brandId) {
		Connection conn =null;
		boolean removeLike = false;
		
		try {
			conn = ConnectionProvider.getConnection();
			DBLDAOImpl dbldaoImpl = DBLDAOImpl.getInstance();
			removeLike = dbldaoImpl.removeLike(conn, userId, brandId);
		} catch (Exception e) {
			System.out.println(">DBLService sIsLiked Exception ");
			e.printStackTrace();
		} // try_catch

		return removeLike;
	} // sRemoveLiked



} // class
