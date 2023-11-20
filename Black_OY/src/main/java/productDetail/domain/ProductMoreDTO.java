package productDetail.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductMoreDTO {

	
	private String PRO_DISPL_SRC;
    private String BRAND_NAME;
    private String BRAND_ID;
    private String PRO_DISPL_NAME;
    private int PROPRICE;
    private String CAT_L_ID;
    private String CAT_M_ID;
    private String CAT_S_ID;
    private int AFTERPRICE;
    private String PRO_DISPL_ID;
    private String PRO_ID;
    private int PRC;
    private String PDC;
    private String PMP;
    private int STOCK;
    private int ORDERCNT;
    private int PRO_STOCK;
    private int PRO_DISPL_LIKE;
    private String PRO_REG;
    private String cat_m_name;
}
