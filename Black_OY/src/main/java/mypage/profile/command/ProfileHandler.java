package mypage.profile.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import mypage.profile.domain.ProfileDTO;
import mypage.profile.service.ProfileService;
import user.domain.LogOnDTO;

public class ProfileHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		String userId = null;
		
		// 현재 로그인 한 유저 id 가져올려면 아래 코드 쓰면 됨
		LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
		userId = logOnDTO.getUser_id();
		
		//다른 사람의 프로필 접속시 조건
		//다른 사람 프로필 클릭 시 그 사람의 userId를 가져오게 처리
		//userId = request.getParameter("userId");
		
		
		
		ProfileService service = ProfileService.getinstance();
		
		//초기화
		List<ProfileDTO> profileInfo = null;
		List<String> skintrouble = null;
		List<String> intcate = null;

		//서비스
		profileInfo = service.pfinfoService(userId);
		skintrouble = service.pfstrService(userId);
		intcate = service.pfintcateService(userId);
		
		request.setAttribute("profileInfo", profileInfo);
		request.setAttribute("skintrouble", skintrouble);
		request.setAttribute("intcate", intcate);
				
		return "/view/mypage/myprofile.jsp";
	}

}
