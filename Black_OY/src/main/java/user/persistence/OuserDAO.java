package user.persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import user.domain.LogOnDTO;
import user.domain.OuserDTO;

public interface OuserDAO {
	//회원가입 여부 체크
	OuserDTO joinCheck(Connection conn, String u_tel) throws SQLException;
	//회원가입
	int join( Connection conn, OuserDTO dto) throws SQLException;
	//비밀번호 변경
	int pwdUpdate(Connection conn, LogOnDTO logDto) throws SQLException;
	//회원정보수정
	
}

