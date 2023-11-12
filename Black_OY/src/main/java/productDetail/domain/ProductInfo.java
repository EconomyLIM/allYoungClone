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
	private String proImg;
	private String proId;
	private String proName;
	private String catSId;
	private int proPrice;
	private int lowPrice;
	private int afterPrice;
	private int prg;
	private int prc;
	private int prd;
	private int prp;
	private int stock;
	
} // class
