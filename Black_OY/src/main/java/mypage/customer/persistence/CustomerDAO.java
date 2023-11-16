package mypage.customer.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import mypage.main.domain.MpPAskDTO;

public interface CustomerDAO {
	//1:1문의 등록
	int insertPask(Connection conn, MpPAskDTO dto) throws SQLException;
	//1:1문의 리스트
	List<MpPAskDTO> selectPAskList(Connection conn, String uId) throws Exception;
	
}
