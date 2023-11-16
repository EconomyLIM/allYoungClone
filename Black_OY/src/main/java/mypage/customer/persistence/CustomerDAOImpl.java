package mypage.customer.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

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
	
	//1:1 문의 리스트
	@Override
	public List<MpPAskDTO> selectPAskList(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT pask_state, pask_content, pask_date, ac_major, ac_minor, pask_ans "
				+ " FROM personal_ask a left join ask_category c on a.ac_id=c.ac_id "
				+ " WHERE user_id = ? ";
		
		ArrayList<MpPAskDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, uId);
		rs = pstmt.executeQuery();
		MpPAskDTO dto = null;
		if (rs.next()) {
			list = new ArrayList<MpPAskDTO>();
			
			do {
				dto = new MpPAskDTO();
				dto.setPaskState(rs.getString("pask_state"));
				dto.setPaskQuestion(rs.getString("pask_content"));
				dto.setPaskDate(rs.getDate("pask_date"));
				dto.setPaskMa(rs.getString("ac_major"));
				dto.setPaskMi(rs.getString("ac_minor"));
				dto.setPaskAns(rs.getString("pask_ans"));
				list.add(dto);			
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		} catch (Exception e) {
			System.out.println("> MyPageDAOImpl_selectUserPAsk() Exception");
		}
		return list;
		
	}
}
