package mypage.customer.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import mypage.main.domain.MpPAskDTO;
import user.persistence.OuserDAOImpl;

public class CustomerDAOImpl implements CustomerDAO{
	private CustomerDAOImpl() {}
	private static CustomerDAOImpl instance = new CustomerDAOImpl();
	public static CustomerDAOImpl getInstance() {
		return instance;
	}
	
	//1:1 문의 등록
	@Override
	public int insertPask(Connection conn, MpPAskDTO dto) throws SQLException {
		String sql = "INSERT INTO personal_ask ( pask_content ) VALUES ( ? ) ";
		PreparedStatement pstmt = null;
		int rowCount = 0;
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, dto.getPaskQuestion());
		rowCount = pstmt.executeUpdate();
		
		pstmt.close();
		return rowCount;
	}
}
