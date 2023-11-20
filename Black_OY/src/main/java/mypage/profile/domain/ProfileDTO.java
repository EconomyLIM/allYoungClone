package mypage.profile.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProfileDTO {
	
	private String nickname;
	private String pfContent;
	private String skinType;
	private String skinTone;
	private String pfimgsrc;
	
	//피부고민, 관심카테고리는 dto없이 list<String> 으로
	
	private int recommCount;
	private int followerCount;
	private int followingCount;
	
	
	
}
