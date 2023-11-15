package order.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
/*
 * 
 * 기존 ProductInfo에서 주문할 때 수량을 저장할 변수만 추가함
 */
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
	private int pafterPrice;
	private int lowPrice;
	private int afterPrice;
	private int prc;
	private int prd;
	private int prp;
	private int stock;
	private int proStock;
	private int cnt;
	
} // class
