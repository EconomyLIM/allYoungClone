package brand.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import brand.domain.BrandDTO;
import brand.persistence.BrandDAO;


public class BrandService {
/*
		   // 1. 싱글톤
		   private BrandService() {}      
		   private static BrandService instance = null;  
		   public static BrandService getInstance() {   
		      if(   instance == null  ) {
		         instance = new BrandService();
		      }
		      return instance;
		   }

		   public List<BrandDTO> select(){
		      //
		      Connection conn = null;
		      try {
		         conn = ConnectionProvider.getConnection();
		         BrandDAO dao = BrandDAO.getInstance();
		         List<BrandDTO> list = null;
		         list = dao.selectList(conn);
		         return list;
		      } catch (NamingException | SQLException e) { 
		         //e.printStackTrace();  syso("ListService.select() 에러 : ")
		         throw new RuntimeException(e);
		      } finally {
		       
		      }
		   }   
	*/	  
		
	}
	

