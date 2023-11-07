package mypage.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MpQnADTO {
	
	private String qnaAns;		//상품QnA상태
	private String qnaQus;		//상품QnA질문
	private Date qnaDate;			//상품QnA작성일
}
