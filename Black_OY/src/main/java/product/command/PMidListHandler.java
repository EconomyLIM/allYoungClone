package product.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;
import product.domain.PlowcateDTO;
import product.survice.PMidSurvice;

public class PMidListHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("> PlistHandler.process...");
		
		PMidSurvice pmidsurvice = PMidSurvice.getinstance();
		List<PlowcateDTO> pLowcateList = pmidsurvice.selectLowCate(); 
		
		request.setAttribute("pLowcateList", pLowcateList);
		
		return "/view/product/pmidlistproduct.jsp";
		
	} // process

} // class
