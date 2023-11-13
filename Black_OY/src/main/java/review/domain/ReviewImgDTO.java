package review.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ReviewImgDTO {

	private String rev_img_id;
	private String rev_id;
	private String rev_img_src; 
	
}
