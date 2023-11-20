package main.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PopularProDTO {

	private String psId;
	private String psSrc;
	private String psSumm;
	private String psSecSumm;
	private String pskeyword; // 배너정보 
	private String displImgSrc;
	private String brandId;
	private String brandName;
	private String displProName;
	private String lid;
	private String mid;
	private String sid;
	private String proPrice;
	private String afterPrice;
	private String displId;
	private String productID;
	private int prc;
	private int pdc;
	private int pmp;
	private int stock;

	
} // class
