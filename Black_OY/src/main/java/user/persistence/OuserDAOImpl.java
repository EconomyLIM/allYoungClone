
package user.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
@Getter
@AllArgsConstructor
public class OuserDAOImpl implements OuserDAO {
	
	private Connection conn = null;
	@Override
	public String getJoinCheck(String u_tel) throws SQLException {
		String getJoinCheck = null;
		PreparedStatement pstmt = null;
	      
	      String sql = "SELECT SUBSTR ( REGEXP_REPLACE(u_tel, '[^0-9]'), 4 )"
	      		+ "FROM o_user"
	      		+ "WHERE SUBSTR ( REGEXP_REPLACE(u_tel, '[^0-9]'), 4 ) = ?" ;

	      pstmt = this.conn.prepareStatement(sql); 
	      pstmt.setString(1, u_tel);
	      ResultSet rs = pstmt.executeQuery()   ;      
	      if( rs.next() ) {
	    	  getJoinCheck = rs.getString("u_tel");
	      }      
	      pstmt.close();
	      rs.close();
	      return getJoinCheck;
	}


}

