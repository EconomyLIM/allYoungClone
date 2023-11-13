package productDetail.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import productDetail.domain.AllCateDTO;
import productDetail.domain.CateLDTO;
import productDetail.domain.CateMDTO;
import productDetail.domain.CateSDTO;
import productDetail.domain.DetailExImgDTO;
import productDetail.domain.ProDisplImgDTO;
import productDetail.domain.ProductInfo;
import productDetail.domain.ProductPromo;
import productDetail.service.ProDetailService;
import review.domain.ReviewDTO;
import review.domain.ReviewImgDTO;
import review.domain.ReviewScoreDTO;
import review.service.ReviewService;

public class ProductDetailHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("ProductDetailHandler process..");
		
		String goodsNo = request.getParameter("goodsNo");
		ProDetailService proDetailService = ProDetailService.getinstance();
		
		//=======================  해당 상품의 모든 상위칸에 있는 정보 ===========================	
		List<ProductInfo> pLists = proDetailService.sProductInfo(goodsNo); 
		ProductInfo productInfo = pLists.get(0);
		request.setAttribute("pLists", pLists); // 상품 상단 정보 리스트
		
		
		//=======================  해당 상품의 모든 카테고리 ===========================	
		AllCateDTO allCateDTO = proDetailService.sAllCate(goodsNo); 
		int cateHId = allCateDTO.getCatHId();
		String cateLId = allCateDTO.getCatLId();
		String cateMId = allCateDTO.getCatMId();
		
		List<CateLDTO> cLList = proDetailService.sSelectCLlist(cateHId); // 모든 대분류 카테고리 가져오기
		List<CateMDTO> cMList = proDetailService.sSelectMCList(cateLId); // 모든 중분류 카테고리 가져오기
		List<CateSDTO> cSList = proDetailService.sSelectSCList(cateMId); // 모든 소분류 카테고리 가져오기
		
		request.setAttribute("allCateDTO", allCateDTO); // 상품의 모든 카테고리 정보
		request.setAttribute("cLList", cLList); // 상품에 해당하는 대분류 리스트
		request.setAttribute("cMList", cMList); // 상품에 해당하는 중분류 리스트
		request.setAttribute("cSList", cSList); // 상품에 해당하는 소분류 리스트
		
		
		//=======================  해당 상품의 프로모션 ===========================
		ProductPromo productPromo = proDetailService.sProductPromo(goodsNo); // 
		request.setAttribute("productPromo", productPromo); // 상품의 현재 프로모션 정보 갖고오기
		
		
		//======================= 해당 상품의 이미지 갖고오기 ===========================
		List<ProDisplImgDTO> proDImg = proDetailService.sProductImgs(goodsNo);
		request.setAttribute("proDImg", proDImg); // 상품의 표시 이미지 갖고오기 

		//======================= 해당 상품의 설명 이미지 갖고오기 ===========================
		List<DetailExImgDTO> exImg = proDetailService.sDetailExImg(goodsNo);
		if (exImg == null) {
			request.setAttribute("noexImg", "상품 설명을 준비중입니다. <br><br><br>");
		} else {
			request.setAttribute("exImg", exImg);
		} // if else
	
		// ======================= 해당 상품의 리뷰 갖고오기 ===========================
		System.out.println("리뷰리스트 핸들러");
		String pro_displ_id = null;
		String rev_id = null;
		String type = null;
		
		List<ReviewDTO> reviewlist = null;
		List<ReviewImgDTO> reviewimglist = null;
		List<List<ReviewImgDTO>> reviewimg = new ArrayList<List<ReviewImgDTO>>();
		ReviewDTO reviewDTO = null;
		
		ReviewScoreDTO reviewScoreDTO = null;
		try {
			pro_displ_id = goodsNo;
			
			type = request.getParameter("type");
			if (type == null || type.isEmpty() || type.equals("null")) {
				type = "01";
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리뷰 오류 제발 나지 마라");
		}
			
		ReviewService reviewService = ReviewService.getInstance();
		reviewlist = reviewService.reviewListService(pro_displ_id, type);
		reviewScoreDTO = reviewService.reviewScoreService(pro_displ_id);
		
		try {
				if (reviewlist != null) {
			for (int i = 0; i < reviewlist.size(); i++) {
				rev_id = reviewlist.get(i).getRev_id();
				reviewimglist = reviewService.reviewimgService(rev_id);
				reviewimg.add(reviewimglist);
			}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리뷰 이미지 오류");
		}
		
		
		if (reviewlist != null) {
		request.setAttribute("reviewcnt", reviewlist.size());
		request.setAttribute("reviewlist", reviewlist);
		request.setAttribute("reviewScore", reviewScoreDTO);
		request.setAttribute("reviewimg", reviewimg);
		}
		
		// ======================= 해당 상품의 리뷰 갖고오기 ===========================
		

		
		
		
		
		
		
		return "/view/product/product.jsp";
	} // process

} // class
