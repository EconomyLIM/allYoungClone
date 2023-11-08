package product.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import product.domain.MidCateDTO;
import product.domain.PMidListDTO;
import product.domain.PageDTO;
import product.domain.PbrandListDTO;
import product.domain.PlowcateDTO;
import product.domain.TopCateDTO;
import product.service.PMidService;

public class PMidListHandler implements CommandHandler{
	
	

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("> PlistHandler.process...");
		String displNum = "";
		String sort = "1";
		
		//파라미터 값 가져오기
		try {
			displNum = request.getParameter("displNum"); // 파라미터 값으로 대분류 번호 갖고오기
			
			if (request.getParameter("sort") == null) {
				sort = "1";
			} else if(request.getParameter("sort") != null) {
				sort = request.getParameter("sort");
			} // if/else
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">PMidListHandler process parseInt Exception");
		} // try_catch
		
		//  1. 초기화
		List<PlowcateDTO> pLowcateList = null;
		List<PbrandListDTO> pbrandlist = null;
		List<PMidListDTO> pmidlistdto = null;
		List<TopCateDTO> topcatedto = null;
		List<MidCateDTO> midcatedto = null;
		
		//  ======= 페이징 처리 ===== 
		int currentPage =1; //현재페이지 번호 
	
		int numberOfPageBlock =10; //
		int totalRecords =0; // 총 레코드 수 게시글 수
		
		int perPage = 5; // 한페이지에 출력하는 변수를 서버에 전송하는 변수 원래는 24이지만 테스트로인해 5로수정
		int totalpage = 0; // 한페이지가 얼마나 나오는 수
		PageDTO pageDTO = null;
		
		if( request.getParameter("perPage") == null) {
			perPage = 5;
		} else if (request.getParameter("perPage") != null) {
			perPage = Integer.parseInt(request.getParameter("perPage"));
		} //if else
		
		try {
			
			if (request.getParameter("currentpage") == null) {
				currentPage = 1;
			} else {
				currentPage =Integer.parseInt(request.getParameter("currentpage"));
			} //ifelse
			
		} catch (Exception e) {
			System.out.println("currentPage Parsing exception");
			e.printStackTrace();
		} //try-catch
		
		
		
		// 분기
		if (displNum.length() == 4) {
			
			
		} else if(displNum.length() == 8) {
			
			String cateL = displNum.substring(0, 4);
			String cateM = displNum.substring(4, 8);
			PMidService pmidsurvice = PMidService.getinstance();
			
			pLowcateList = pmidsurvice.selectLowCate(cateM); // 하위(소분류)카테고리 가져오는 작업 
			pbrandlist = pmidsurvice.selectBrand(cateM);
			/* pmidlistdto = pmidsurvice.selectMproduct(cateM, sort); */
			pmidlistdto = pmidsurvice.selectMproduct(cateM, sort, currentPage, perPage);
			topcatedto = pmidsurvice.selectTopCate(cateM);
			midcatedto = pmidsurvice.selectMidCate(cateL);
			
			totalRecords = pmidsurvice.GTRService(cateM); // 총레코드 수 가져오는 서비스 
			totalpage = pmidsurvice.GTPService(perPage, cateM); // 몇페이지 나오는지 구하는 서비스
			pageDTO = new PageDTO(currentPage, perPage, numberOfPageBlock, totalpage);
			
			request.setAttribute("pLowcateList", pLowcateList);
			request.setAttribute("pbrandlist", pbrandlist);
			request.setAttribute("pmidlistdto", pmidlistdto);
			request.setAttribute("topcatedto", topcatedto);
			request.setAttribute("midcatedto", midcatedto);
			request.setAttribute("pDto", pageDTO);
			
			
		} else {
			
		} // if/else
		
		
		
		
		
		return "/view/product/pmidlistproduct.jsp";
		
	} // process

} // class
