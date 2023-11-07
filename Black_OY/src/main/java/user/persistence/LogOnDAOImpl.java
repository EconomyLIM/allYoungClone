package user.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import user.domain.LogOnDTO;

public class LogOnDAOImpl implements LogOnDAO{

	
	private LogOnDAOImpl() {}
	private static LogOnDAOImpl instance = new LogOnDAOImpl();
	public static LogOnDAOImpl getInstance() {
		return instance;
	}
	
	@Override
	public LogOnDTO logselect(Connection conn, String user_id, String u_pwd) {
		
		LogOnDTO logdto = null; 
		String sql = "Select user_id, u_name, u_pwd, gr_name From O_USER ou join OLIVE_MEMBERS om on ou.grade_id = om.grade_id Where user_id = ? AND u_pwd = ? ";
		
		PreparedStatement psmt = null;
		ResultSet rs = null;

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, user_id);
			psmt.setString(2, u_pwd);
			rs = psmt.executeQuery();
			if (rs.next()) {
				
					logdto = new LogOnDTO(rs.getString("user_id"),rs.getString("u_name") , rs.getString("u_pwd"), rs.getString("gr_name"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return logdto;
	}

}