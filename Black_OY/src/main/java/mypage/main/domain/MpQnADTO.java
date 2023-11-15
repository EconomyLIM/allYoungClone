package mypage.main.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MpQnADTO {
	
	private String qnaAns;		//상품QnA답변
	private String qnaQus;		//상품QnA질문
	private Date qnaDate;		//상품QnA작성일
	private String qnaImg;		//상품QnA이미지
	private String qnaDisplN;	//상품QnA표시명
	private String qnaBrand;	//상품QnA브랜드명
	private String qnaState;	//상품QnA상태
	
}
