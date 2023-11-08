package user.persistence;

import java.sql.SQLException;
import java.util.ArrayList;

import user.domain.OuserDTO;

public interface OuserDAO {
	//회원가입 여부 체크
	OuserDTO joinCheck(String u_tel) throws SQLException;
	//회원가입
	int join(OuserDTO dto) throws SQLException;
}

