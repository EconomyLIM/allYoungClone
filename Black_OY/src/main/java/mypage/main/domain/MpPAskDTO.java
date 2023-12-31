package mypage.main.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MpPAskDTO {
	
	private String paskState; 		//1:1문의 상태
	private String paskQuestion;	//1:1문의 질문
	private Date paskDate;			//1:1문의 작성일
	private String paskMa;			//1:1문의 대분류
	private String paskMi;			//1:1문의 소분류
	private String paskAns;			//1:1문의 답변
	private String paskId;			// 1:1문의 ID
	private String paskImg;		// 1:1문의 첨부이미지
	private String paskcateId;		// 1:1문의 카테고리 ID
}
