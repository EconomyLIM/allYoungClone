package main.persistence;

import java.sql.Connection;
import java.util.List;

import main.domain.MainUserDTO;
import product.domain.PMidListDTO;

public interface MainDAO {

	// 1. 로그인한 사람의 정보를 갖고오는 작업
	public MainUserDTO selectUserInfo (Connection conn, String userId) throws Exception;
	
	// 2. 로그인한 사람과 비슷한 아이디를 갖고오는 작업
	public List<String> similarUser(Connection conn, MainUserDTO dto) throws Exception;
	
	// 3. 비슷한 아이디가 구매한 상품ID를 갖고오는 작업
	public List<String> similarProduct(Connection conn, List<String> list) throws Exception; 
	
	// 4. 갖고온 상품 ID의 정보들을 갖고오는 작업
	public List<PMidListDTO> similardispl (Connection conn, List<String> list) throws Exception;
	
} // interface
