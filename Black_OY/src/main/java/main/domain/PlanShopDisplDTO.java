package main.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@EqualsAndHashCode
public class PlanShopDisplDTO {

	private String psId;
	private String psSrc;
	private String psSumm;
	private String psSecSumm;
	private String pskeyword;
	
} // class
