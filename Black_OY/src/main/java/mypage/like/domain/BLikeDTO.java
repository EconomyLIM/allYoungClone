package mypage.like.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BLikeDTO {
	
	private String brandN;		//브랜드명
	private int bLikeamount;	//브랜드 좋아요수
	private String bDisplsrc;	//브랜드 표시이미지
	
	private int brandCount;		//브랜드 갯수
}
