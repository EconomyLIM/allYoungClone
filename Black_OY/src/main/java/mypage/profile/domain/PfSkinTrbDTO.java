package mypage.profile.domain;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PfSkinTrbDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4137601510185340918L;
	
	private String pfskinTrbName;
	private String pfskinTrbId;

}
