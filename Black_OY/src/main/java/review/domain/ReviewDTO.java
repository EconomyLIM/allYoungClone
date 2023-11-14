package review.domain;

import java.sql.Date;

import brand.domain.BrandDTO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewDTO {

	private String rev_id;
	private String user_id;
	private String pro_displ_id; 
	private int rev_like;
	private String rev_content;
	private int rev_grade;
	private Date rev_reg;
	private int rev_grade_1;
	private int rev_grade_2;
	private int rev_grade_3;
	private String pro_id;
}
