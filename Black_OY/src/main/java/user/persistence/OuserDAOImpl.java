
package user.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.util.ConnectionProvider;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import user.domain.OuserDTO;

@NoArgsConstructor
@Setter
@Getter
@AllArgsConstructor
public class OuserDAOImpl implements OuserDAO {
	
	private Connection conn = null;
	
	//회원가입여부 체크
	@Override
	public OuserDTO joinCheck(String u_tel) throws SQLException {

	      String sql = " SELECT * "
	      		+ " FROM( "
	      		+ " SELECT user_id, u_name, u_birth, SUBSTR ( REGEXP_REPLACE(u_tel, '[^0-9]'), 4 ) u_tel "
	      		+ " FROM o_user "
	      		+ "     ) "
	      		+ " WHERE u_tel = ? " ;
	      ResultSet rs = null;
		  PreparedStatement pstmt = null;
		  
		  OuserDTO dto= null;

	      pstmt = this.conn.prepareStatement(sql); 
	      pstmt.setString(1, u_tel);
	      rs = pstmt.executeQuery();      
	      if( rs.next() ) {
			dto= OuserDTO.builder()
			 				.u_name(rs.getString("u_name"))
			 				.u_birth(rs.getDate("u_birth"))
			 				.u_tel(rs.getString("u_tel"))
			 				.user_id(rs.getString("user_id"))
			 				.build();
	      }      
	      pstmt.close();
	      rs.close();
	      
	      return dto;
	}
	
	//회원가입
	@Override
	public int join(OuserDTO dto) throws SQLException {
		int rowCount = 0;
		String sql = "INSERT INTO o_user (user_id, u_name, u_pwd, u_tel, u_birth, u_email "
				+ " VALUES (? , ?, ?, ?, ?, ? ) ";
		PreparedStatement pstmt = null;

		pstmt = this.conn.prepareStatement(sql); 
		pstmt.setString(1,  dto.getUser_id() );
		pstmt.setString(2,  dto.getU_name() );
		pstmt.setString(3,  dto.getU_pwd() );
		pstmt.setString(4,  dto.getU_tel() );
		pstmt.setDate(5,  (Date) dto.getU_birth());
		pstmt.setString(6,  dto.getU_email() );
		rowCount = pstmt.executeUpdate();

		pstmt.close();
		return rowCount;

	}



}
