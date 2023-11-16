package mypage.customer.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import mypage.main.domain.MpPAskDTO;
import mypage.orderDelivery.domain.MPODOrderDTO;
import user.domain.LogOnDTO;

public interface CustomerDAO {
	//1:1문의 등록
	int insertPask(Connection conn, MpPAskDTO askDto, String user_id) throws SQLException;
	//1:1문의 리스트
	List<MpPAskDTO> selectPAskList(Connection conn, String uId) throws Exception;
	//주문내역 조회
	List<MPODOrderDTO> selectOrderList (Connection conn, String uId) throws Exception;
	// 문의 카테고리 major
	List<String> getmajCate(Connection conn) throws Exception;
	// 문의 카테고리 minor
	List<String> getminCate(Connection conn, String ac_major) throws Exception;
}
