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
	int pwdUpdate(Connection conn, String user_id, String newPwd) throws SQLException;
	//회원정보수정
	int infoUpdate(Connection conn, String newEmail, String newPwd, String user_id) throws SQLException;
	//이름수정
	 int nameUpdate( Connection conn, String user_id, String newName) throws SQLException;
}

