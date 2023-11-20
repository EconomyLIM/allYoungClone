package brand.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class BrandDTO { //브랜드 페이지에 사용된 객체들을 담음 
   
       private String brand_id; 
       private String brand_name;
       private int brand_like;
       private String brand_summ;
       private String  brand_expl;
       private String brand_img_src;
       private String pro_displ_id;
       private int pro_price;
       private String pro_displ_name;
       private String pro_displ_src;
       private int pro_displ_like;
       private String rev_id;
       private int rev_like;
       private String rev_content;
       private int rev_grade;
       private Date pro_reg;
       private String cate_l_id;
       private String cate_l_name;
       private int afterprice;
      private String pro_id;
      private int prc; 
      private int pdc;
      private int pmp;
      private int stock;
  	private int displLike;
  	private int ordercnt;
  	private Date proReg;
  	private int  pro_stock;
} // class