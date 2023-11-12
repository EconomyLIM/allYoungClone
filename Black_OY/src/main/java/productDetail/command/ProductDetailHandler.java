package productDetail.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import productDetail.domain.AllCateDTO;
import productDetail.domain.CateLDTO;
import productDetail.domain.CateMDTO;
import productDetail.domain.CateSDTO;
import productDetail.domain.ProDisplImgDTO;
import productDetail.domain.ProductInfo;
import productDetail.domain.ProductPromo;
import productDetail.service.ProDetailService;

public class ProductDetailHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("ProductDetailHandler process..");
		
		String goodsNo = request.getParameter("goodsNo");
		ProDetailService proDetailService = ProDetailService.getinstance();
		
		//=======================  해당 상품의 모든 상위 정보 ===========================	
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

		//=======================  ===========================
		
		
		
		
		

		
		
		
		
		
		
		return "/view/product/product.jsp";
	} // process

} // class
