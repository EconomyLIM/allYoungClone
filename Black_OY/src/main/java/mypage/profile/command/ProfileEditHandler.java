package mypage.profile.command;

import java.sql.Connection;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import command.CommandHandler;
import mypage.profile.domain.PfIntCateDTO;
import mypage.profile.domain.PfSkinTrbDTO;
import mypage.profile.domain.ProfileDTO;
import mypage.profile.service.ProfileService;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import user.domain.LogOnDTO;

public class ProfileEditHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		String userId = null;
		String method = request.getMethod();
		
		// 현재 로그인 한 유저 id 가져올려면 아래 코드 쓰면 됨
		LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
		userId = logOnDTO.getUser_id();
				
		Connection conn = ConnectionProvider.getConnection();
		
		ProfileService service = ProfileService.getinstance();
		
		//프로필
		List<ProfileDTO> profileInfo = null;
		List<PfSkinTrbDTO> skintrouble = null;
		List<PfIntCateDTO> intcate = null;
		
		//프로필 서비스
		profileInfo = service.pfinfoService(userId);
		skintrouble = service.pfstrService(userId);
		intcate = service.pfintcateService(userId);
		
		//JSON으로 변환
		JSONArray pfiJson = listprofiledtoToJsonarray(profileInfo, skintrouble, intcate);
		
		
		
		//프로필 
		request.setAttribute("profileInfo", pfiJson);
		
		
		//처음 접속시(파라미터 없음)
		if ("GET".equals(method)) {
			System.out.println("get전송");
			return "/view/mypage/profileEdit.jsp";
			
		} else if ("POST".equals(method)) {
			System.out.println("post전송");
			
			//프로필 수정에 사용될 파라미터들
			String editNN = null;
			String editpfCon = null;
			String editsTone = null;
			String editsType = null;
			String edituImgSrc = null;
			
			List<String> newSkinTrouble = null;
			List<String> newInterCate = null;
		
			//결과를 받을 변수
			int updatePFRS = 0;
			int insertStrRS = 0;
			int insertICRS = 0;
			int deleteStrRS = 0;
			int deleteICRS = 0;
			
			//프로필 수정 서비스
			updatePFRS = service.pfeditService(userId, editNN, editpfCon, editsTone, editsType, edituImgSrc);
			insertStrRS = service.pfinsStrService(edituImgSrc, newSkinTrouble);
			insertICRS = service.pfinsIntCateService(edituImgSrc, newInterCate);

			deleteStrRS = service.pfdelstrService(userId);
			deleteICRS = service.pfdelIntCateService(userId);
						
			request.setAttribute("updatePFRS", updatePFRS);
			request.setAttribute("deleteStrRS", deleteStrRS);
			request.setAttribute("deleteICRS", deleteICRS);
			request.setAttribute("insertStrRS", insertStrRS);
			request.setAttribute("insertICRS", insertICRS);
			
			return "/view/mypage/profileEdit.jsp";
			
			
		} else {
			
			return "/view/mypage/myprofile.jsp";
			
		}
		
	
	
	}

	
	//json 변환 메서드
	private static JSONArray listprofiledtoToJsonarray(List<ProfileDTO> profileInfo, List<PfSkinTrbDTO> skintrouble, List<PfIntCateDTO> intcate ) {
		JSONArray array = new JSONArray();
		for (ProfileDTO profileDTO : profileInfo) {
			JSONObject jsonObject = profileDTOToJsonObject(profileDTO);
			array.add(jsonObject);
		}
		for (PfSkinTrbDTO pfSkinTrbDTO : skintrouble) {			
			JSONObject jsonObject2 = pfskinTrbDTOToJsonObject(pfSkinTrbDTO);
			array.add(jsonObject2);
		}
		for (PfIntCateDTO pfIntCateDTO : intcate) {
			JSONObject jsonObject3 = pfintCateDTOToJsonObject(pfIntCateDTO);
			array.add(jsonObject3);
		}
		System.out.println(array);
		return array;
	}
	
	private static JSONObject profileDTOToJsonObject( ProfileDTO dto ) {
		JSONObject object = new JSONObject();
		object.put("skinTypeid", dto.getSkinTypeid());
		object.put("skinToneid", dto.getSkinToneid());
		System.out.println(object);
		return object;
	}
	
	private static JSONObject pfskinTrbDTOToJsonObject( PfSkinTrbDTO dto ) {
		JSONObject object = new JSONObject();
		object.put("pfskinTrbId", dto.getPfskinTrbId());
		System.out.println(object);
		return object;
	}
	
	private static JSONObject pfintCateDTOToJsonObject( PfIntCateDTO dto ) {
		JSONObject object = new JSONObject();
		object.put("pfintCateId", dto.getPfintCateId());
		System.out.println(object);
		return object;
	}
	
	
	

	
}

