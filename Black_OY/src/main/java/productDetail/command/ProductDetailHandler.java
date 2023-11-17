package productDetail.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import product.domain.PageDTO;
import productDetail.domain.AllCateDTO;
import productDetail.domain.CateLDTO;
import productDetail.domain.CateMDTO;
import productDetail.domain.CateSDTO;
import productDetail.domain.DetailBrandDTO;
import productDetail.domain.DetailExImgDTO;
import productDetail.domain.DetailInfoDTO;
import productDetail.domain.ProDisplImgDTO;
import productDetail.domain.ProductInfo;
import productDetail.domain.ProductPromo;
import productDetail.domain.QnADetailDTO;
import productDetail.service.ProDetailService;
import review.domain.ReviewDTO;
import review.domain.ReviewImgDTO;
import review.domain.ReviewScoreDTO;
import review.service.ReviewService;
import user.domain.LogOnDTO;

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
		String pro_id = null;
		String rev_id = null;
		String type = null;
		
		List<ReviewDTO> reviewlist = null;
		List<ReviewDTO> reviewlistall = null;
		List<ReviewImgDTO> reviewimglist = null;
		List<List<ReviewImgDTO>> reviewimg = new ArrayList<List<ReviewImgDTO>>();
		ReviewDTO reviewDTO = null;
		ReviewService reviewService = ReviewService.getInstance();
		ReviewScoreDTO reviewScoreDTO = null;
		try {
			pro_displ_id = goodsNo;
			pro_id = request.getParameter("pro_id");
			type = request.getParameter("type");
			if (type == null || type.isEmpty() || type.equals("null")) {
				type = "01";
			}
			if (pro_id == null || pro_id.isEmpty() || pro_id.equals("null")) {
				pro_id = "ALL";
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리뷰 오류 제발 나지 마라");
		}
		// 페이징 처리
		int currentPage =1; //현재페이지 번호 
		
		int numberOfPageBlock =10; //
		int totalRecords =0; // 총 레코드 수 게시글 수
		
		int perPage = 1; // 한페이지에 출력하는 변수를 서버에 전송하는 변수 원래는 24이지만 테스트로인해 5로수정
		int totalpage = 0; // 한페이지가 얼마나 나오는 수
		PageDTO pageDTO = null;
		
		try {
			
			if (request.getParameter("currentpage") == null || request.getParameter("currentpage") == "") {
				currentPage = 1;
			} else {
				currentPage =Integer.parseInt(request.getParameter("currentpage"));
			} //if_else
			
		} catch (Exception e) {
			System.out.println("currentPage Parsing exception");
			e.printStackTrace();
		} //try-catch
		totalRecords= reviewService.GTRRService(pro_displ_id, pro_id);
		totalpage = reviewService.GTRPService(pro_displ_id,pro_id , perPage);
		
		pageDTO = new PageDTO(currentPage, perPage, numberOfPageBlock, totalpage);
		
		reviewlist = reviewService.reviewListService(pro_displ_id, type, pro_id, currentPage, perPage);
		reviewScoreDTO = reviewService.reviewScoreService(pro_displ_id, pro_id);
		reviewlistall = reviewService.reviewListService(pro_displ_id, pro_id);
		try {
				if (reviewlist != null) {
			for (int i = 0; i < reviewlistall.size(); i++) {
				rev_id = reviewlistall.get(i).getRev_id();
				reviewimglist = reviewService.reviewimgService(rev_id);
				reviewimg.add(reviewimglist);
			}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("리뷰 이미지 오류");
		}
		
		
		if (reviewlist != null) {
		
		request.setAttribute("pDto", pageDTO);
		request.setAttribute("totalRecords", totalRecords);			
		request.setAttribute("reviewcnt", reviewlistall.size());
		request.setAttribute("reviewlist", reviewlist);
		request.setAttribute("reviewScore", reviewScoreDTO);
		request.setAttribute("reviewimg", reviewimg);
		}
		
		// ======================= 해당 브랜드 정보 갖고오기 ===========================
		DetailBrandDTO detailBrandDTO = proDetailService.sDetailBrand(goodsNo);
		request.setAttribute("detailBrandDTO", detailBrandDTO);

		// ======================= 해당 브랜드 정보 갖고오기 ===========================
		DetailInfoDTO detailInfoDTO = proDetailService.sDetailInfo(goodsNo);
		request.setAttribute("detailInfoDTO", detailInfoDTO);
		
		// ======================= 해당 브랜드 QnA 갖고오기 ===========================
		List<QnADetailDTO> qnaList = proDetailService.sDetailQna(goodsNo);
		request.setAttribute("qnaList", qnaList);
		
		// ======================= (데이터 수집) 사용자가 조회했던 중분류 카테고리 저장 ========
	
		LogOnDTO logOnDTO = (LogOnDTO) request.getSession().getAttribute("logOn");
		if (logOnDTO != null || request.getParameter("displNum") != null ) {
			int rowCnt = proDetailService.sCollectView(logOnDTO.getUser_id(), cateMId);
		} // if

		
		
		
		
		return "/view/product/product.jsp";
	} // process

} // class
