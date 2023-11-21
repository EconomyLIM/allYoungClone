package product.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class PMidListDTO {

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
	private int displLike;
	private int ordercnt;
	private Date proReg;
	private int prostock;
	
} // class
