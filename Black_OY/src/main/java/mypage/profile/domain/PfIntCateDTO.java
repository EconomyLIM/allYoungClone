package mypage.profile.domain;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PfIntCateDTO implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -3015085914817296456L;
	
	private String pfintCateName;
	private String pfintCateId;
	
}	
