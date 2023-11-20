package head.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ProductHistoryDTO {

	private String PRO_DISPL_SRC;
    private String BRAND_NAME;
    private String BRAND_ID;
    private String PRO_DISPL_NAME;
    private String PROPRICE;
    private String CAT_L_ID;
    private String CAT_M_ID;
    private String CAT_S_ID;
    private String AFTERPRICE;
    private String PRO_DISPL_ID;
    private String PRO_ID;
    private String PRC;
    private String PDC;
    private String PMP;
    private String STOCK;
    private String ORDERCNT;
    private String PRO_STOCK;
    private String PRO_DISPL_LIKE;
    private String PRO_REG;
	
} // class
