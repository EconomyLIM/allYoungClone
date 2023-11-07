package product.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PMidListDTO {

	private String displImgSrc;
	private String brandName;
	private String displProName;
	private String lId;
	private String mId;
	private String sId;
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
	
} // class
