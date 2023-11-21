//BRANDHANDLER
package brand.command;

import java.util.List;

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


   @Override
   public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

      // 데이터 가져오기
      this.brandDao = new BrandDAOImpl();
      this.brandService  = new BrandService(brandDao);

      //product.do?brandId=br_00000107
      String brandId = request.getParameter("brandId");
      String categoryId = request.getParameter("categoryId"); 

      BrandDTO brand = this.brandService.getBrandInfo(brandId);  // [1]   구달      10507명   
      List<BrandDTO> bsbrand = this.brandService.getProductsByCategory(brandId , categoryId);


      request.setAttribute("brand", brand);
      request.setAttribute("bsbrand", bsbrand); 

      return "/view/brand/brand.jsp";

   }
    */  

   @Override
   public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

      System.out.print("brandhandler");
      // 데이터 가져오기
      this.brandService  = new BrandService(brandDao);
      this.brandDao = new BrandDAOImpl();

      //      List<BrandDTO> brandds = brandDao. getCATEBrandsDetail();

      //product.do?brandId=br_00000107
      String brandId = request.getParameter("brandId");
      String categoryId = request.getParameter("categoryId"); 
      

      System.out.println("brandID: "+brandId);

      BrandDTO brand = brandDao.getBrands(brandId);
      System.out.println(brand);
      //List<BrandDTO> bestBrandProducts = brandDao.getBestBrandpro(brandId, categoryId);
      List<BrandDTO> brandProducts = brandDao.getsellProduct(brandId, categoryId);
      List<BrandDTO> sellbrandProducts = brandDao.getsellProduct(brandId, categoryId);
      List<BrandDTO> relist = brandDao.getReviews();
       
      
      request.setAttribute("brand", brand);
      //request.setAttribute("bestBrandProducts", bestBrandProducts);
      request.setAttribute("sellbrandProduts", sellbrandProducts);
      request.setAttribute("relist" , relist );
      //request.setAttribute("sellbrandProducts", sellbrandProduct);

     // List<BrandDTO> bsbrand = brandDao.getBestBrandpro(brandId , categoryId);   
      
      
      
      //      List<BrandDTO> nwbrand = brandDao.getNewBrandsDetail(brandId);
      
      //      List<BrandDTO> lowpri = brandDao.getProductsByCategory(brandId , toString() );
      
      //      List<BrandDTO> relist =  brandDao.getreviews();              //System.out.println( ">> 검색 결과 확인  : " +  brandDetails.size());
      
           
      //      데이터를 요청 속성에 추가
      //      request.setAttribute("brandds", brandds);
      
      //request.setAttribute("bsbrand", bsbrand);  
      
      
      //      request.setAttribute("nwbrand", nwbrand);
      //      request.setAttribute("lowpri", lowpri);
      //      request.setAttribute("relist", relist);
        
  
    

      // JSP 페이지로 요청 전달
      //RequestDispatcher dispatcher = request.getRequestDispatcher("brand_page.jsp");
      //dispatcher.forward(request, response);

      return "/view/brand/brand.jsp";

   }




}

