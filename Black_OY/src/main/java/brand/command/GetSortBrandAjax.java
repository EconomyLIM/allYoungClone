//getsortbrand
package brand.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import brand.domain.BrandDTO;
import brand.persistence.BrandDAOImpl;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@WebServlet("/GetSortBrandAjax")
public class GetSortBrandAjax extends HttpServlet {
   private static final long serialVersionUID = 1L;
   
   private BrandDAOImpl brandDao;

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setCharacterEncoding("utf-8");
      PrintWriter writer = response.getWriter();
      
      String sort =request.getParameter("sort");
      String brand_id = request.getParameter("brand_id");
      String dispcatno = request.getParameter("dispcatno");
  
      System.out.println("sort : " + sort);
      System.out.println("brand_id : " + brand_id);
      System.out.println("dispcatno: " + dispcatno);
      
      this.brandDao = new BrandDAOImpl();
      List<BrandDTO> list = null;
     
      try {
    	  list = brandDao.getSortBrands(brand_id, sort, dispcatno);
      } catch (Exception e) {
        
         e.printStackTrace();
      }
      
      JSONObject jsonObject = new JSONObject();
      JSONObject brand = null;
      
      BrandDTO dto = null;
      
      JSONArray jsonArray = new JSONArray();
      
      Iterator<BrandDTO> ir = list.iterator();
      while (ir.hasNext()) {
         dto = ir.next();
         brand = new JSONObject();
	         brand.put("pro_displ_src", dto.getPro_displ_src());
	         brand.put("brand_name", dto.getBrand_name());
	         brand.put("brand_id", dto.getBrand_id());
	         brand.put("pro_displ_name", dto.getPro_displ_name());
	         brand.put("pro_price", dto.getPro_price());
	         brand.put("afterprice", dto.getAfterprice());
	         brand.put("pro_displ_id", dto.getPro_displ_id());
	         brand.put("pro_id", dto.getPro_id());
	         brand.put("prc", dto.getPrc());
	         brand.put("pdc", dto.getPdc());
	         brand.put("pmp", dto.getPmp());
	         brand.put("stock", dto.getStock());
	         brand.put("ordercnt", dto.getOrdercnt());
	         brand.put("pro_stock", dto.getPro_stock());
	         brand.put("pro_displ_like", dto.getPro_displ_like());
	         brand.put("pro_reg", dto.getPro_reg() != null ? dto.getPro_reg().toString() : null);
         jsonArray.add(brand);
      }
  jsonObject.put("brands", jsonArray);
      request.setAttribute("brandlist", list);
      request.getRequestDispatcher("/view/brand/brandtest.jsp").forward(request, response);
      
      System.out.println(">>" + jsonObject);
         
      writer.write(jsonObject.toString());
   }
   }
 
