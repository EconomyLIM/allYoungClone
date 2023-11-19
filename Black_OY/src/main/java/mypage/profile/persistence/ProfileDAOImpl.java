package mypage.profile.persistence;

import java.sql.Connection;
import java.util.List;

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
		String sql = "  ";
		
		return null;
	}

	@Override
	public List<String> selectSkinTrouble(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> selectIntCate(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProfileDTO> updateProfile(Connection conn, String uId, String nickN, String pfCon, String sTone,
			String sType, String uImgsrc) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> updateSkinTrouble(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> updateIntCate(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> deleteSkinTroubleAll(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> deleteIntCateAll(Connection conn, String uId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
}
