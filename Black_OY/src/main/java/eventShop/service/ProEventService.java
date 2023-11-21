package eventShop.service;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import eventShop.domain.ProEventInfoDTO;
import eventShop.domain.ProEventProductDTO;
import eventShop.persistence.ProEventDAOImpl;
import product.domain.PMidListDTO;

public class ProEventService {

	//싱글톤
		private ProEventService() {}
		private static ProEventService instance = null;
		public static ProEventService getinstance() {
			if(   instance == null  ) {
				instance = new ProEventService();
			}
			return instance;
		} // getinstance
		
		// 이벤트의 정보를 갖고오는 작업
		public ProEventInfoDTO sGetEventInfo (String eventId) {
			
			Connection conn = null;
			ProEventInfoDTO dto = null;
			
			try {
				
				conn = ConnectionProvider.getConnection();
				ProEventDAOImpl daoImpl = ProEventDAOImpl.getInstance();
				dto = daoImpl.getEventInfo(conn, eventId);
				
			} catch (Exception e) {
				System.out.println("ProEventService sGetEventInfo Exception");
				e.printStackTrace();

			} finally {
				JDBCUtil.close(conn);
			} // try_catch
			
			return dto;
		} // sGetEventInfo
		
		// 해당 이벤트의 상품과 카테고리를 갖고오는 작업
		public HashMap<ProEventProductDTO, List<PMidListDTO>> sGetEventProduct(String eventId){
			
			Connection conn = null;
			HashMap<ProEventProductDTO, List<PMidListDTO>> map = null;
			
			try {
				conn = ConnectionProvider.getConnection();
				ProEventDAOImpl daoImpl = ProEventDAOImpl.getInstance();
				map = daoImpl.getEventProduct(conn, eventId);
				System.out.println(map);
			} catch (Exception e) {
				System.out.println("ProEventService sGetEventProduct Exception");
				e.printStackTrace();

			} finally {
				JDBCUtil.close(conn);
			} // try_catch
			
			return map;
		} // sGetEventProduct
		
	
} // class
