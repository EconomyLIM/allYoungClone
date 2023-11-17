package mypage.like.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BLikeDTO {
	
	private String brandN;		//브랜드명
	private int bamount;	//브랜드 좋아요수
	private String bdisplsrc;	//브랜드 표시이미지
	
	
}
