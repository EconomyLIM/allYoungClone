package brand.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
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
	
  
}