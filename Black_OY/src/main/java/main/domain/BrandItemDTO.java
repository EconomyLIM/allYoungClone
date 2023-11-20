package main.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class BrandItemDTO {

	private String proDisplSrc;
    private String brandName;
    private String brandId;
    private String proDisplName;
    private String proPrice;
    private String catLId;
    private String catMId;
    private String catSId;
    private String afterPrice;
    private String proDisplId;
    private String proId;
    private String prc;
    private String pdc;
    private String pmp;
    private String stock;
    private String orderCnt;
    private String proStock;
    private String proDisplLike;
    private String proReg;
	
}
