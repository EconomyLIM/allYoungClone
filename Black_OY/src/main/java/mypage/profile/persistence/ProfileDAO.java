package mypage.profile.persistence;

import java.sql.Connection;
import java.util.List;

import mypage.profile.domain.PfIntCateDTO;
import mypage.profile.domain.PfSkinTrbDTO;
import mypage.profile.domain.ProfileDTO;

public interface ProfileDAO {
	
	//1.	나의 프로필 정보 가져오기(피부고민, 관심카테고리 제외)
	public List<ProfileDTO> selectProfile(Connection conn, String uId) throws Exception;
	
	//2.	피부고민 가져오기
	public List<PfSkinTrbDTO> selectSkinTrouble(Connection conn, String uId) throws Exception;
	
	//3. 	관심카테고리 가져오기
	public List<PfIntCateDTO> selectIntCate(Connection conn, String uId) throws Exception;
	
	//4.	나의 프로필 수정하기
	public int updateProfile(Connection conn, String uId, String nickN, String pfCon, String sTone, String sType, String uimgsrc ) throws Exception;
	
	//5. 	피부고민 삽입하기
	public int insertSkinTrouble(Connection conn, String uId, List<String> skinTrouble) throws Exception;
	
	//6.	관심카테고리 삽입하기
	public int insertIntCate(Connection conn, String uId, List<String> intCate) throws Exception;
	
	//7.	피부고민 전부 삭제하기
	public int deleteSkinTroubleAll(Connection conn, String uId) throws Exception;
	
	//8. 	관심카테고리 전부 삭제하기
	public int deleteIntCateAll(Connection conn, String uId) throws Exception;
}
