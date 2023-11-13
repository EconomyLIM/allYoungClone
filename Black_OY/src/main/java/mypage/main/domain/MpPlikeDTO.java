package mypage.main.domain;

import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MpPlikeDTO {
		
		private int rowNum;					//상품좋아요 rownnum
		private String plImgsrc;			//상품좋아요 이미지경로
		private String plbrand;				//상품좋아요 브랜드명
		private String plpdispN;			//상품좋아요 상품표시명			
		private String plpricep;			//상품좋아요 가격
		private String plpricea;			//상품좋아요 할인된가격
	   	private String plpdispId;			//상품좋아요 상품표시id
	   	private String plpId;				//상품좋아요 상품id
    	private int pmc;					//상품좋아요 쿠폰 프로모션
    	private int pmd;					//상품좋아요 할인 프로모션
    	private int pmp;					//상품좋아요 증정 프로모션
    	private int stock;					//상품좋아요 재고량
            	
}
                                            