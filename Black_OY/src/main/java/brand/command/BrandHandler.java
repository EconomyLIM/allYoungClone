package brand.command;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import brand.domain.BrandDTO;
import brand.persistence.BrandDAOImpl;
import brand.service.BrandService;
import command.CommandHandler;

public class BrandHandler implements CommandHandler {


          private BrandDAOImpl brandDao;
          private BrandService brandService;
/*
          public void init() {
              brandDao = new BrandDAOImpl(); // DAO 구현체 초기화
          }
*/     
         @Override
         public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
               // 데이터 가져오기
        	   this.brandService  = new BrandService(brandDao);
               this.brandDao = new BrandDAOImpl();
            
               List<BrandDTO> brandds = brandDao. getCATEBrandsDetail();
             
               //    /product.do?brandId=br_00000107
               String brandId = request.getParameter("brandId");
              
             BrandDTO brand = brandDao.getBrands(brandId);
              
              
              List<BrandDTO> bsbrandpro = brandDao.getBestBrandpro(brandId , toString() );
              
              List<BrandDTO> nwbrand = brandDao.getNewBrandsDetail();
              
              List<BrandDTO> lowpri = brandDao.getProductsByCategory(brandId , toString() );
              
              List<BrandDTO> relist =  brandDao.getreviews();              //System.out.println( ">> 검색 결과 확인  : " +  brandDetails.size());
              
              // 데이터를 요청 속성에 추가
              request.setAttribute("brandds", brandds);
              request.setAttribute("brand", brand);
            request.setAttribute("bsbrandpro", bsbrandpro);
            request.setAttribute("nwbrand", nwbrand);
            request.setAttribute("lowpri", lowpri);
            request.setAttribute("relist", relist);
            
             System.out.println(brand);
              

              // JSP 페이지로 요청 전달
              //RequestDispatcher dispatcher = request.getRequestDispatcher("brand_page.jsp");
              //dispatcher.forward(request, response);
         
              return "/view/brand/brand.jsp";
         
         }
         
         

   }
   

