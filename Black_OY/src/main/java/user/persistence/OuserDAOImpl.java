
package user.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;
import javax.tools.DocumentationTool.Location;

import com.util.ConnectionProvider;
import com.util.JDBCUtil;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import user.domain.LogOnDTO;
import user.domain.OuserDTO;

public class OuserDAOImpl implements OuserDAO {
	
	private OuserDAOImpl() {}
	private static OuserDAOImpl instance = new OuserDAOImpl();
	public static OuserDAOImpl getInstance() {
		return instance;
	}

	//회원가입여부 체크
	@Override
	public OuserDTO joinCheck(Connection conn, String u_tel) throws SQLException {

	      String sql = " SELECT * "
	      		+ " FROM( "
	      		+ " SELECT user_id, u_name, u_birth, SUBSTR ( REGEXP_REPLACE(u_tel, '[^0-9]'), 4 ) u_tel "
	      		+ " FROM o_user "
	      		+ "     ) "
	      		+ " WHERE u_tel = ? " ;
	      ResultSet rs = null;
		  PreparedStatement pstmt = null;
		  
		  OuserDTO dto= null;

		  try {
			  pstmt = conn.prepareStatement(sql); 
			  pstmt.setString(1, u_tel);
			  rs = pstmt.executeQuery();      
			  if( rs.next() ) {
				  dto= OuserDTO.builder()
						  				.u_name(rs.getString("u_name"))
						  				.u_birth(rs.getDate("u_birth"))
						  				.u_tel(rs.getString("u_tel"))
						  				.user_id(rs.getString("user_id"))
						  				.build();
			  } //if  
		  } catch (Exception e) {
			  e.printStackTrace();
			  System.out.println("joinCheckImpl Exception~");
		  }finally {
			  JDBCUtil.close(pstmt);
			  JDBCUtil.close(rs);
			  JDBCUtil.close(conn);
		  }

	      return dto;
		}
	
	//회원가입
	@Override
	public int join( Connection conn, OuserDTO dto) throws SQLException {
		int rowCount = 0;
		String sql = "INSERT INTO o_user (user_id, u_name, u_pwd, u_tel, u_birth, u_email) "
				+ " VALUES (?, ?, ?, ?, ?, ? ) ";
		PreparedStatement pstmt = null;
		try { 
			pstmt = conn.prepareStatement(sql); 
			pstmt.setString(1,  dto.getUser_id() );
			pstmt.setString(2,  dto.getU_name() );
			pstmt.setString(3,  dto.getU_pwd() );
			pstmt.setString(4,  dto.getU_tel() );
			java.util.Date d = dto.getU_birth() ;
			d.setMonth(d.getMonth()-1);
			pstmt.setDate(5,   new Date(d.getTime()) );
			pstmt.setString(6,  dto.getU_email() );
			rowCount = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("joinImpl Exception~");
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(conn);
		}
		return rowCount;
	}

	//비밀번호 변경
	@Override
	public int pwdUpdate( Connection conn, String user_id, String newPwd) throws SQLException {
		int rowCount = 0;
		String sql = "UPDATE o_user SET u_pwd = ? "
				+ " WHERE user_id = ? ";
		
		 PreparedStatement pstmt = null;
		try { 
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, newPwd);
			pstmt.setString(2, user_id);
			
			rowCount = pstmt.executeUpdate();  
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("pwdUpdateImpl Exception~");
		}finally {
			JDBCUtil.close(pstmt);
		}
		return rowCount;
	}
	
	//회원정보 수정
	@Override
	public int infoUpdate(Connection conn, String user_id, String newEmail, String newPwd) throws SQLException {
		int infoUpd = 0;
		String sql = "UPDATE o_user SET u_email = ? , u_pwd = ? "
				+ "WHERE user_id = ? ";
		
		PreparedStatement pstmt = null;
		
		try {
	        pstmt = conn.prepareStatement(sql);
	        
	        pstmt.setString(1, newEmail);
	        pstmt.setString(2 , newPwd);
	        pstmt.setString(3, user_id);

	        infoUpd = pstmt.executeUpdate();
	        
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("infoUpdateImpl Exception~");
		}finally {
			JDBCUtil.close(pstmt);
		}
		return infoUpd;
	}
	@Override
	public int nameUpdate( Connection conn, String user_id, String newName) throws SQLException {
		int nameUpd = 0;
		String sql = "UPDATE o_user SET u_name = ? "
				+ " WHERE user_id = ? ";
		
		 PreparedStatement pstmt = null;
		try { 
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, newName);
			pstmt.setString(2, user_id);
			
			nameUpd = pstmt.executeUpdate();  
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("nameUpdateImpl Exception~");
		}finally {
			JDBCUtil.close(pstmt);
		}
		return nameUpd;
	}

	@Override
	public int telUpdate(Connection conn, String user_id, String newTel) throws SQLException {
		int telUpd = 0;
		String sql = "UPDATE o_user SET u_tel = ? "
				+ " WHERE user_id = ? ";
		
		 PreparedStatement pstmt = null;
		try { 
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, newTel);
			pstmt.setString(2, user_id);
			
			telUpd = pstmt.executeUpdate();  
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("telUpdateImpl Exception~");
		}finally {
			JDBCUtil.close(pstmt);
		}
		return telUpd;
	}
	
}
