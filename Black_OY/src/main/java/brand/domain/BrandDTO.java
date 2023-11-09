package brand.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BrandDTO {
	
	    private String BRAND_ID;
	    private String BRAND_NAME;
	    private int BRAND_LIKE;
	    private String BRAND_SUMM;
	    private String BRAND_EXPL;
	    private String BRANDIMGSRC;
	    private String PRO_DISPL_ID;
	    private int PRO_PRICE;
	    private String PRO_DISPL_NAME;
	    private String PRO_DISPL_SRC;
	    private String REV_ID;
	    private int REV_LIKE;
	    private String REV_CONTENT;
	    private int REV_GRADE; 
  
}
