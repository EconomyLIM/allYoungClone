package user.persistence;

import java.sql.SQLException;

public interface OuserDAO {

	String getJoinCheck(String u_tel) throws SQLException;
}
