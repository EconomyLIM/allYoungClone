package productDetail.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProDisplImgDTO {
	
	private String proDImgId;
	private String proDlId;
	private String proDImgSrc;
	
} // class
