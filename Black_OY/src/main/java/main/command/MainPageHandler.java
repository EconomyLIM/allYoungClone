package main.command;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import main.domain.BrandItemDTO;
import main.domain.MainBrandDTO;
import main.domain.PlanShopDisplDTO;
import main.domain.PopularProDTO;
import main.service.MainService;
import product.domain.PMidListDTO;
import user.domain.LogOnDTO;

public class MainPageHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
		String user_id = "user1";
		if (logOnDTO != null) {
			user_id = logOnDTO.getUser_id();
		} // if
		
		// ================= 회원과 유사한 고객이 구매한 상품들 갖고오는 작업 ==================
		MainService mainService = MainService.getinstance();
		List<PMidListDTO> pdList = mainService.simmilarBuy(user_id);
		request.setAttribute("pdList", pdList);
		
		// ================= 회원을 위한 추천 상품 ==================
		List<PMidListDTO> recommendList = mainService.recommendBuy(user_id);
		request.setAttribute("recommendList", recommendList);
		
		// ================= Week Special 배너정보 갖고오는 작업 ==================
		List<PlanShopDisplDTO> getWSBanner = mainService.getWeekSpecial(1);
		request.setAttribute("getWSBanner", getWSBanner);
		
		// ================= 인기행사만 모았어요! 배너정보 갖고오는 작업 ==================
		HashMap<PlanShopDisplDTO, List<PopularProDTO>> getPopBanner = mainService.sGetPopularShop();
		request.setAttribute("getPopBanner", getPopBanner);
		
		// 메인 브랜드 10개
		List<MainBrandDTO> mbrandlist = mainService.mainBrandService();
		request.setAttribute("mbrandlist", mbrandlist);
		// 브랜드 제품 2개
		List<List<BrandItemDTO>> mbilist = new ArrayList<List<BrandItemDTO>>();
		List<BrandItemDTO> brandItemDTOs = null;
		String brand_id = null;
		for (int i = 0; i < mbrandlist.size(); i++) {
			brand_id = mbrandlist.get(i).getBrand_id();
			brandItemDTOs = mainService.mainBrandItemService(brand_id);
			mbilist.add(brandItemDTOs);
		}
		request.setAttribute("mbilist", mbilist);
		
		// ================= 올리브영 매거진 배너정보 갖고오는 작업 ==================
		List<PlanShopDisplDTO> getOMBanner = mainService.getWeekSpecial(3);
		request.setAttribute("getOMBanner", getOMBanner);
				
		// ================= 올리브영 매거진 배너정보 갖고오는 작업 ==================
		List<PlanShopDisplDTO> getOOBanner = mainService.getWeekSpecial(4);
		request.setAttribute("getOOBanner", getOOBanner);
		
		// ================= 신상 업데이트 배너 갖고오는 작업 ==================
		List<PlanShopDisplDTO> getNUBanner = mainService.getWeekSpecial(5);
		request.setAttribute("getNUBanner", getNUBanner);
		
		// ================= MD가 추천해요 상품 갖고오는 작업 ==================
		List<PMidListDTO> getMdRecommend = mainService.sGetMdRecommend();
		request.setAttribute("getMdRecommend", getMdRecommend);
		
		return "/view/mainPage/main.jsp";
	} // process
	
	

} // main
