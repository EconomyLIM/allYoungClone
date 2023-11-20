package mypage.profile.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.util.JDBCUtil;

import mypage.profile.domain.ProfileDTO;

public class ProfileDAOImpl implements ProfileDAO {
	
	private ProfileDAOImpl() {}
	private static ProfileDAOImpl instance = new ProfileDAOImpl();
	public static ProfileDAOImpl getinstance() {
		return instance;
	}
	
	@Override
	public List<ProfileDTO> selectProfile(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT a.user_id, a.nickname nn, a.pc pfc, a.skintone_title stone, a.skintype_title stitle, SUM(a.rev_like) AS trl, a.follower fl, a.following fi"
				+ " FROM ( "
				+ "    SELECT up.user_id, nickname, NVL(pf_content, '내용없음') pc , pst.skintone_title, skintype_title, r.rev_like, follower, following "
				+ "    FROM user_profile up "
				+ "    LEFT JOIN pf_skintone pst ON up.skintone_id = pst.skintone_id "
				+ "    LEFT JOIN pf_skintype psk ON up.skintype_id = psk.skintype_id "
				+ "    LEFT JOIN o_user u ON up.user_id = u.user_id "
				+ "    LEFT JOIN review r ON u.user_id = r.user_id "
				+ "    WHERE up.user_id = ? "
				+ " ) a "
				+ " GROUP BY a.user_id, a.nickname, a.pc, a.skintone_title, a.skintype_title, a.follower, a.following ";
		
		ArrayList<ProfileDTO> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			rs = pstmt.executeQuery();
			ProfileDTO dto = null;
			if (rs.next()) {
				list = new ArrayList<ProfileDTO>();
				
				do {
					dto = new ProfileDTO();
					dto.setNickname(rs.getString("nn"));
					dto.setSkinTone(rs.getString("stone"));
					dto.setSkinType(rs.getString("stype"));
					dto.setPfContent(rs.getString("pfc"));
					dto.setRecommCount(rs.getInt("trl"));
					dto.setFollowerCount(rs.getInt("fl"));
					dto.setFollowingCount(rs.getInt("fi"));
					list.add(dto);
				} while (rs.next());
				JDBCUtil.close(pstmt);
				JDBCUtil.close(rs);
				JDBCUtil.close(conn);
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> ProfileDAOImpl selectProfile exception");
		} 
		
		return list;
	}

	@Override
	public List<String> selectSkinTrouble(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT  skintrb_title st "
				+ " FROM upf_skintrouble ut left join pf_skintrouble pt on ut.skintrb_id = pt.skintrb_id "
				+ " WHERE user_id = ? ";
		
		ArrayList<String> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			rs = pstmt.executeQuery();
			String st = null;
			do {
				st = rs.getString("st");
				list.add(st);
			} while (rs.next());
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> ProfileDAOImpl selectSkinTrouble exception");
		}
		
		return list;
	}

	@Override
	public List<String> selectIntCate(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " SELECT interest_title it "
				+ " FROM upf_intcate ui left join pf_intcate pi on ui.interest_id = pi.interest_id "
				+ " WHERE user_id = ? ";
		ArrayList<String> list = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			rs = pstmt.executeQuery();
			String it = null;
			do {
				it = rs.getString("st");
				list.add(it);
			} while (rs.next());
			
			JDBCUtil.close(pstmt);
			JDBCUtil.close(rs);
			JDBCUtil.close(conn);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> ProfileDAOImpl selectIntCate() exception");
		}
		
		return list;
	}

	@Override
	public int updateProfile(Connection conn, String uId, String nickN, String pfCon, String sTone,
			String sType, String uimgsrc) throws Exception {
		// TODO Auto-generated method stub
		String sql = " UPDATE user_profile up " +
                " SET up.nickname = COALESCE( ? , up.nickname), " +
                "    up.pf_content = COALESCE( ? , up.pf_content), " +
                "    up.user_img = COALESCE( ? , up.user_img), " +
                "    up.skintone_id = COALESCE((SELECT skintone_id FROM pf_skintone WHERE skintone_title = ? ), up.skintone_id), " +
                "    up.skintype_id = COALESCE((SELECT skintype_id FROM pf_skintype WHERE skintype_title = ? ), up.skintype_id) " +
                " WHERE up.user_id = ? ";
		
		PreparedStatement pstmt = null;
		int rs = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nickN);
			pstmt.setString(2, pfCon);
			pstmt.setString(3, uimgsrc);
			pstmt.setString(4, sTone);
			pstmt.setString(5, sType);
			pstmt.setString(6, uId);
			rs = pstmt.executeUpdate();
			
			if (rs == 0) {
				System.out.println("> ProfileDAOImpl updateProfile() update fail");
				return 0;
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> ProfileDAOImpl updateProfile() Exception");
		}finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(conn);
		}
		return rs;
	}
	
	@Override
	public int insertSkinTrouble(Connection conn, String uId, List<String> skinTrouble) throws Exception {
		// TODO Auto-generated method stub
		String sql = " INSERT INTO upf_skintrouble (USKINT_ID, USER_ID, SKINTRB_ID)  "
				+ "				SELECT 'UST_' || lpad(ust_seq.NEXTVAL, 8, '0'), ? , t2.SKINTRB_ID  "
				+ "				 FROM upf_skintrouble t1  "
				+ "				 JOIN pf_skintrouble t2 ON t1.SKINTRB_ID = t2.SKINTRB_ID  "
				+ "				 WHERE t1.SKINTRB_ID = ? AND ROWNUM = 1  ";
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);

			for (String st : skinTrouble) {
				pstmt.setString(1, uId);
				pstmt.setString(2, st);
				pstmt.addBatch();
			}
			
			int [] results = pstmt.executeBatch();
			
		    for (int i = 0; i < results.length; i++) {
		        int result = results[i];
		        if (result >= 0) {
		            System.out.println("Batch " + (i + 1) + " executed success");
		        } else {
		            System.out.println("Batch " + (i + 1) + " failed. Error code: " + result);
		        }
		    }
		    		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> ProfileDAOImpl insertSkinTrouble() Exception");
			return 0;
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(conn);
		}
		return 1;
	}
	
	@Override
	public int insertIntCate(Connection conn, String uId, List<String> intCate) throws Exception {
		// TODO Auto-generated method stub
		String sql = " INSERT INTO upf_intcate (UINTCATE_ID, USER_ID, INTEREST_ID) "
				+ " SELECT 'uin_' || lpad(uin_seq.NEXTVAL, 7, '0'), ? , t2.interest_id "
				+ " FROM upf_intcate t1 "
				+ " JOIN pf_intcate t2 ON t1.interest_id = t2.interest_id "
				+ " WHERE t1.interest_id = ? AND ROWNUM = 1  ";
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);

			for (String ic : intCate) {
				pstmt.setString(1, uId);
				pstmt.setString(2, ic);
				pstmt.addBatch();
			}
			
			int [] results = pstmt.executeBatch();
			
		    for (int i = 0; i < results.length; i++) {
		        int result = results[i];
		        if (result >= 0) {
		            System.out.println("Batch " + (i + 1) + " executed success");
		        } else {
		            System.out.println("Batch " + (i + 1) + " failed. Error code: " + result);
		        }
		    }
		    		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> ProfileDAOImpl insertIntCate() Exception");
			return 0;
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(conn);
		}
		return 1;
	}

	@Override
	public int deleteSkinTroubleAll(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " DELETE from upf_skintrouble "
				+ " where user_id = ? ";
		PreparedStatement pstmt = null;
		int rs = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			rs = pstmt.executeUpdate();
			
			if (rs == 0) {
				System.out.println("> ProfileDAOImpl deleteSkinTroubleAll() delete fail");
				return 0;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> ProfileDAOImpl deleteSkinTroubleAll() Exception ");
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(conn);
		}
		return rs;
	}

	@Override
	public int deleteIntCateAll(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		String sql = " DELETE from upf_intcate "
				+ " where user_id = ? ";
		PreparedStatement pstmt = null;
		int rs = 0;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uId);
			rs = pstmt.executeUpdate();
			
			if (rs == 0) {
				System.out.println("> ProfileDAOImpl deleteIntCateAll() delete fail");
				return 0;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("> ProfileDAOImpl deleteIntCateAll() Exception ");
		} finally {
			JDBCUtil.close(pstmt);
			JDBCUtil.close(conn);
		}
		return rs;
	}

	
}
