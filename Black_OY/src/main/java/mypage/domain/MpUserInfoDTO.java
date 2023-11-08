package mypage.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MpUserInfoDTO {
	
	private String uName;		//회원이름
	private String uGrade;		//등급ID
	
}
