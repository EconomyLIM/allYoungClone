package product.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import product.domain.PMidListDTO;
import product.domain.PbrandListDTO;
import product.domain.PlowcateDTO;
import product.survice.PMidSurvice;

public class PMidListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("> PlistHandler.process...");
		String displNum = "";
		
		// 파라미터 값으로 대분류 번호 갖고오기
		try {
			displNum = request.getParameter("displNum");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(">PMidListHandler process parseInt Exception");
		} // try_catch
		
		//  1. 초기화
		List<PlowcateDTO> pLowcateList = null;
		List<PbrandListDTO> pbrandlist = null;
		List<PMidListDTO> pmidlistdto = null;
		// 분기
		if (displNum.length() == 4) {
			
			
		} else if(displNum.length() == 8) {
			
			String cateL = displNum.substring(0, 4);
			String cateM = displNum.substring(4, 8);
			PMidSurvice pmidsurvice = PMidSurvice.getinstance();
			
			pLowcateList = pmidsurvice.selectLowCate(cateM); // 하위(소분류)카테고리 가져오는 작업 
			pbrandlist = pmidsurvice.selectBrand(cateM);
			pmidlistdto = pmidsurvice.selectMproduct(cateM);
			
			request.setAttribute("pLowcateList", pLowcateList);
			request.setAttribute("pbrandlist", pbrandlist);
			request.setAttribute("pmidlistdto", pmidlistdto);
			
		} else {
			
		} // if/else
		
		
		
		
		
		return "/view/product/pmidlistproduct.jsp";
		
	} // process

} // class
