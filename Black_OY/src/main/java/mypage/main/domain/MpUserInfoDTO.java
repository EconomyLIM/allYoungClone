package mypage.main.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MpUserInfoDTO {
	
	private String ugrade;		//등급명
	private String uname;		//회원이름
	
}
