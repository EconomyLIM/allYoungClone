package mypage.customer.domain;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Getter
@Setter
@NoArgsConstructor
public class FaqDTO {

	private String faq_id;  		//faqID
	private String ac_id;			// faq카테고리 ID
	private String ask_kw_id;		// faq키워드 ID
	private String faq_title;		// faq 제목
	private String fac_content;	// faq 내용

}
