package eventShop.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ProEventInfoDTO {
	
	private String peiId;
	private String peiName;
	private String peiSrc;
	private String peiSD;
	private String peiED;
	

} // class
