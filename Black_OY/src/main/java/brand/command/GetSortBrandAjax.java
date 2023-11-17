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
import net.sf.json.JSONObject;

@WebServlet("/GetSortBrandAjax")
public class GetSortBrandAjax extends HttpServlet {
   private static final long serialVersionUID = 1L;
   
   private BrandDAOImpl brandDao;

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setCharacterEncoding("utf-8");
      PrintWriter writer = response.getWriter();
      
      String sort = request.getParameter("sort");
      String brand_id = request.getParameter("brand_id");
      String dispcatno = request.getParameter("dispcatno");
      System.out.println("sort : " + sort);
      System.out.println("brand_id : " + brand_id);
      System.out.println("dispcatno: " + dispcatno);
      
      this.brandDao = new BrandDAOImpl();
      List<BrandDTO> list = null;
      
      try {
         list = brandDao.getSortBrands(brand_id, dispcatno);
      } catch (Exception e) {
         
         e.printStackTrace();
      }
      
      JSONObject jsonObject = new JSONObject();
      JSONObject brand = null;
      
      BrandDTO dto = null;
      
      Iterator<BrandDTO> ir = list.iterator();
      while (ir.hasNext()) {
         dto = ir.next();
         brand = new JSONObject();
         brand.put("pro_displ_name", ir);
      }
      
      System.out.println(jsonObject);
         
      writer.write(jsonObject.toString());
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request, response);
   }

}