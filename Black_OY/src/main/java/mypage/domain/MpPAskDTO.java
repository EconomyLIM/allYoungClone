package mypage.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MpPAskDTO {
	
	private String pAskState; 		//1:1문의 상태
	private String pAskQuestion;	//1:1문의 질문
	private Date pAskDate;			//1:1문의 작성일
}
