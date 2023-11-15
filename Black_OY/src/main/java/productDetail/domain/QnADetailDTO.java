package productDetail.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class QnADetailDTO {

	private String qnaId;
	private String userId;
	private String question;
	private String answer;
	private String regDate;
	private String state;
	
} // class
