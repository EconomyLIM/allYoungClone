package mypage.qna.persistence;

import java.sql.Connection;
import java.util.List;

import mypage.main.domain.MpQnADTO;

public interface MPPrdQnADAO  {
	
	//기간이 설정된 조회
	List<MpQnADTO> selectUserQnA(Connection conn, String uId, String start, String end) throws Exception;
	
}
