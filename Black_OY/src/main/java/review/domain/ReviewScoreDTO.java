package review.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ReviewScoreDTO {

	private int grade_5_ratio;
	private int grade_4_ratio;
	private int grade_3_ratio;
	private int grade_2_ratio;
	private int grade_1_ratio;
	private int grade1_3_ratio;
	private int grade1_2_ratio;
	private int grade1_1_ratio;
	private int grade2_3_ratio;
	private int grade2_2_ratio;
	private int grade2_1_ratio;
	private int grade3_3_ratio;
	private int grade3_2_ratio;
	private int grade3_1_ratio;
	private float averagegrade;
}
