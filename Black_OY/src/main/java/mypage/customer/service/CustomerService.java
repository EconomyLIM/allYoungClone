package mypage.customer.service;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import com.util.ConnectionProvider;

import mypage.customer.domain.FaqDTO;
import mypage.customer.persistence.CustomerDAO;
import mypage.customer.persistence.CustomerDAOImpl;
import mypage.main.domain.MpPAskDTO;
import user.domain.LogOnDTO;


public class CustomerService {
	private CustomerService() {}
	private static CustomerService instance = null;
	
	public static CustomerService getInstance( ) {
		if (instance == null) {
			instance = new CustomerService();
		}
		return instance;
	}
	
	public int addPask ( MpPAskDTO askDto, String user_id) {
		Connection conn = null;
		int rowCount = 0;
		try {
			conn = ConnectionProvider.getConnection();
			CustomerDAOImpl dao = CustomerDAOImpl.getInstance();
			dao.insertPask( conn, askDto, user_id);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rowCount;		
	}

	public List<String> getmajCate() {
		Connection conn = null;
		List<String> list = null;
		try {
			conn = ConnectionProvider.getConnection();
			CustomerDAO dao = CustomerDAOImpl.getInstance();
			list = dao.getmajCate( conn);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;	
	}
	
	public List<String> getminCate(String ac_major) {
		Connection conn = null;
		List<String> list = null;
		try {
			conn = ConnectionProvider.getConnection();
			CustomerDAO dao = CustomerDAOImpl.getInstance();
			list = dao.getminCate( conn, ac_major);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;	
	}
	
	public List<FaqDTO> getKeyword(String faqkeyword) {
		Connection conn = null;
		List<FaqDTO> list = null;
		try {
			conn = ConnectionProvider.getConnection();
			CustomerDAOImpl dao = CustomerDAOImpl.getInstance();
			list = dao.faqKeyword( conn, faqkeyword);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;	
	}
}
