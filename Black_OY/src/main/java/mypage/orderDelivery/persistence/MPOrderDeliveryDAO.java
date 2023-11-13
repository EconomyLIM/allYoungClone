package mypage.orderDelivery.persistence;

import java.sql.Connection;
import java.util.List;

import mypage.orderDelivery.domain.MPODOrderDTO;
import mypage.orderDelivery.domain.MPODdeliveryDTO;
import mypage.orderDelivery.domain.MPODpaymentDTO;

public interface MPOrderDeliveryDAO {
	
	//1. 주문 목록 가져오기
	List<MPODOrderDTO> selectUOrder(Connection conn, String uId) throws Exception;
	
	//주문상세보기
	
	//2. 상세보기 주문상품 목록 가져오기(커넥션 객체, 주문id)
	List<MPODOrderDTO> selectUDetailOrder(Connection conn, String oId) throws Exception;
	
	//3. 상세보기 주문자 주소 가져오기
	List<MPODdeliveryDTO> selectUODelivery(Connection conn, String oId) throws Exception;
	
	//4. 상세보기 결제정보 가져오기(커넥션 객체, 주문id)
	List<MPODpaymentDTO> selectUOPayment(Connection conn, String oId) throws Exception;
	
	
	
}
