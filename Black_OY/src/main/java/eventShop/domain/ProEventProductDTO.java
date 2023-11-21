package eventShop.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import product.domain.PMidListDTO;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProEventProductDTO {

	private String peId;
	private String peName;
	
} // class
