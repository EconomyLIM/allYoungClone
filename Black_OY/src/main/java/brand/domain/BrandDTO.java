package brand.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BrandDTO {
	
	    private String brand_id;  // brand_id
	    private String brand_name;// brand_name
	    private int brand_like;
	    private String brand_summ;
	    private String brand_expl;	   
	    private String brand_img_src;
	    private String pro_displ_id;
	    private int pro_price;
	    private String pro_displ_name;
	    private String pro_displ_src;// PRO_DISPL_SRC;
	    private String rev_id;
	    private int rev_like;
	    private String rev_content;
	    private int rev_grade; 
	   
}
