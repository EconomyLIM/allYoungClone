package productDetail.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProductPromo {
	
	private String promoDId;
	private String promoDS;
	private String promoDE;
	private int promoDdis;
	private String promoCId;
	private String promoCName;
	private String promoCS;
	private String promoCE;
	private int cpdis;

} // class
