package brand.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import brand.domain.BrandDTO;
import brand.persistence.BrandDAOImpl;
import command.CommandHandler;

public class BrandHandler implements CommandHandler {


		    private BrandDAOImpl brandDao;
/*
		    public void init() {
		        brandDao = new BrandDAOImpl(); // DAO 구현체 초기화
		    }
*/     
			@Override
			public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
				 // 데이터 가져오기
				this.brandDao = new BrandDAOImpl();
				
		        List<BrandDTO> brandDetails = brandDao.getAllBrandsDetails();

		        // 데이터를 요청 속성에 추가
		        request.setAttribute("brandDetails", brandDetails);

		        // JSP 페이지로 요청 전달
		        //RequestDispatcher dispatcher = request.getRequestDispatcher("brand_page.jsp");
		        //dispatcher.forward(request, response);
			
		        return "/view/brand/brand.jsp";
			
			}
			
			

	}
	


