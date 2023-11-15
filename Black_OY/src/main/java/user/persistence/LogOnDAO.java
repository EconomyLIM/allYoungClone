package user.persistence;

import java.sql.Connection;
import java.util.List;

import user.domain.LogOnDTO;

public interface LogOnDAO {

	LogOnDTO logselect(Connection conn, String user_id, String u_pwd);
	List<Integer> baskekcnt(Connection conn, String user_id);
	
}
