package brand.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BrandDTO {
	
	    private String brand_Id;
	    private String brand_Name;
	    private int brand_Like;
	    private String brand_Summ;
	    private String brand_Expl;
	    private String brandImgSrc;
	    private String pro_Displ_Id;
	    private int pro_Price;
	    private String pro_Displ_Name;
	    private String pro_Img_Src;
	    private String rev_Id;
	    private int rev_Like;
	    private String rev_Content;
	    private int rev_Grade; 
  
}
