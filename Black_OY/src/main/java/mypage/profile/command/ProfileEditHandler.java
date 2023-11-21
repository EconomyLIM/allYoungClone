package mypage.profile.command;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;

import command.CommandHandler;
import mypage.profile.domain.ProfileDTO;
import mypage.profile.service.ProfileService;
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
		List<String> skintrouble = null;
		List<String> intcate = null;
		
		//프로필 서비스
		profileInfo = service.pfinfoService(userId);
		skintrouble = service.pfstrService(userId);
		intcate = service.pfintcateService(userId);
		
		//프로필 
		request.setAttribute("profileInfo", profileInfo);
		request.setAttribute("skintrouble", skintrouble);
		request.setAttribute("intcate", intcate);
		
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

}
