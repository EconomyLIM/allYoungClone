package productDetail.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class WrtieQnaDTO {
	
	private String userId;
	private String displId; 
	private String contentVal;
	
} // class
