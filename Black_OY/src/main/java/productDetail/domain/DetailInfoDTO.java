package productDetail.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class DetailInfoDTO {

	private String capacity;
	private String reqirement;
	private String useDate;
	private String use;
	private String company;
	private String country;
	private String ingredient;
	private String whether;
	private String caution;
	private String quality;
	private String tel;
	
} // class
