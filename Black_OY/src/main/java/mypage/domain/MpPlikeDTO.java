package mypage.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MpPlikeDTO {
	
	private String plikeDispN;	//상품좋아요표시명
	private String plikeImgsrc;	//상품좋아요이미지
	private Long promgId;	//상품좋아요프로모션
	private Long promcId;	//상품좋아요프로모션
	private Long promdId;	//상품좋아요프로모션
	private Long prompId;	//상품좋아요프로모션
	
}
