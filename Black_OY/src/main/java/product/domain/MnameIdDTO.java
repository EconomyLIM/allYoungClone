package product.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MnameIdDTO {

	private String catLId;
	private String catLName;
	private String catMId;
	private String catMName;
	
} // class
