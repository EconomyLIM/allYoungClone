package eventShop.persistence;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;

import eventShop.domain.ProEventInfoDTO;
import eventShop.domain.ProEventProductDTO;
import product.domain.PMidListDTO;

public interface ProEventDAO {

	// 1. 상품 이벤트 정보를 갖고오는 작업
	public ProEventInfoDTO getEventInfo (Connection conn, String eventId) throws Exception; 
	
	// 2. 상품 이벤트 상품 목록 갖고오는 작업
	public HashMap<ProEventProductDTO, List<PMidListDTO>> getEventProduct (Connection conn, String eventId) throws Exception;
	
} // proEventDAO
