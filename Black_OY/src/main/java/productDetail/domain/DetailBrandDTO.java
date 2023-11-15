package productDetail.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class DetailBrandDTO {

	private String brandId;
	private String brandName;
	private String brandLogoSrc;
	
} // class
