package main.service;

import java.sql.Connection;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import main.domain.MainUserDTO;
import main.persistence.MainDAOImpl;
import product.domain.PMidListDTO;

public class MainService {

	//싱글톤
		private MainService() {}
		private static MainService instance = null;
		public static MainService getinstance() {
			if(   instance == null  ) {
				instance = new MainService();
			}
			return instance;
		} // getinstance
		
		public List<PMidListDTO> simmilarBuy(String userId) {
			
			Connection conn = null;
			
			MainUserDTO mainUserDTO = null; // 유저의 피부톤, 나이, 성별, 피부형식 전송하는 dto
			
			List<String> userList = null; // 로그인한 유저와 비슷한 유저를 갖고오는 list

			List<String> displList = null;
			
			List<PMidListDTO> displProduct = null; // 비슷한 유저가 무슨 상품을 많이 삿는지 가져오는 작업
					
			try {
				
				conn = ConnectionProvider.getConnection();
				MainDAOImpl daoImpl = MainDAOImpl.getInstance();
				
				// 현재 유저의 정보를 갖고오는 작업
				mainUserDTO = daoImpl.selectUserInfo(conn, userId); // 정보를 dto에 담았다.
				System.out.println("Service.daoImpl.selectUserInfo...");
				
				
				userList = daoImpl.similarUser(conn, mainUserDTO); // 나와 똑같은 타입의유저 아이디를 갖고오는 작업
				
				
				displList = daoImpl.similarProduct(conn, userList); // 그 아이디들의 상품아이디를 갖고오는 작업
				
				
				displProduct = daoImpl.similardispl(conn, displList); // 상품아이디를 갖고 상세정보를 가져오는 작업
				
				
				
			} catch (Exception e) {
				System.out.println("> MainService simmilarBuy Exception<");
				e.printStackTrace();
			} finally {
				JDBCUtil.close(conn);
			}
			
			return displProduct; 
			
		} // sSelectUserInfo
		
		
		public List<PMidListDTO> recommendBuy (String userId) {
			
			
			Connection conn = null;
			
			List <String> cateMList = null;
			int cnt = 0;
			
			List<PMidListDTO> recommendProduct = null;
			try {
				
				conn = ConnectionProvider.getConnection();
				MainDAOImpl daoImpl = MainDAOImpl.getInstance();
				
				cateMList = daoImpl.getMidList(conn, userId); // 중분류 카테고리 갖고오기
				cnt = daoImpl.getListCount(conn, cateMList); // 전체 총 레코드 수 
				
				
				recommendProduct = daoImpl.recommendProduct(conn, cateMList);
				
				
				
			} catch (Exception e) {
				System.out.println("> MainService recommendBuy Exception<");
				e.printStackTrace();
			} finally {
				JDBCUtil.close(conn);
			}
			
			return recommendProduct;
			
		} // recommendBuy
		
		
} //class
