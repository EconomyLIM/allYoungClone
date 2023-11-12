package user.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBCUtil;

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
		String sql = "SELECT user_id, u_name, u_pwd, u_tel, u_birth, u_email, u_point, gr_name "
				+ " From O_USER ou join OLIVE_MEMBERS om on ou.grade_id = om.grade_id "
				+ " Where user_id = ? AND u_pwd = ? ";
		
		PreparedStatement psmt = null;
		ResultSet rs = null;

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, user_id);
			psmt.setString(2, u_pwd);
			rs = psmt.executeQuery();
			if (rs.next()) {
				logdto = LogOnDTO.builder()
							.user_id(rs.getString("user_id"))
							.u_name(rs.getString("u_name"))
							.u_pwd(rs.getString("u_pwd"))
							.u_tel(rs.getString("u_tel"))
							.u_birth(rs.getString("u_birth"))
							.u_email(rs.getString("u_email"))
							.u_point(rs.getInt("u_point"))
							.grade_id(rs.getString("gr_name"))
							.build();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(psmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		
		return logdto;
	}

	@Override
	public List<Integer> baskekcnt(Connection conn, String user_id) {
		LogOnDTO logdto = null; 
		String sql = "select count(*) from basket where user_id = ? ";
		String sql2 = "select count(*) from basket_td where user_id = ? ";
		List<Integer> list = new ArrayList<Integer>();
		PreparedStatement psmt = null;
		
		ResultSet rs = null;
		int cnt = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, user_id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				
				cnt = rs.getInt("count(*)");
				list.add(cnt);
			}
			psmt = conn.prepareStatement(sql2);
			psmt.setString(1, user_id);
			rs = psmt.executeQuery();
			if (rs.next()) {
				
				cnt = rs.getInt("count(*)");
				list.add(cnt);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(psmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		}
		return null;
	}

}
