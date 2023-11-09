package productDetail.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductInfo {
	
	private String displId;
	private String displName;
	private String brandId;
	private String brandName;
	private String displOpt;
	private String productId;
	private int beforePrice;
	private int afterPrice;
	private String prc;
	private String prd;
	private String prp;
	private String stock;
	
} // class
