package main.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PlanShopDisplDTO {

	private String psId;
	private String psSrc;
	private String psSumm;
	private String psSecSumm;
	private String pskeyword;
	
} // class
