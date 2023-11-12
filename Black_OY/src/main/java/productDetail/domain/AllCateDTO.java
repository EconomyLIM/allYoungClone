package productDetail.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AllCateDTO {

	private int catHId;
	private String catLId;
	private String catLName;
	private String catMId;
	private String catMName;
	private String catSId;
	private String catSName;
	
} // class
