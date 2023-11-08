package mypage.domain;

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
}
