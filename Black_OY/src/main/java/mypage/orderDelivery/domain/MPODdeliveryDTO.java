package mypage.orderDelivery.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MPODdeliveryDTO {
	
	//상세보기
	private String uodRecip;	//주문배송 받는사람(배송지-받는사람)
	private String uodTel1;		//주문배송 연락처1
	private String uodTel2;		//주문배송 연락처2
	private String uodZip;		//주문배송 우편번호
	private String uodRAddr;	//주문배송 도로명주소
	private String uodAddr;		//주문배송 지번주소
	private String uodBAddr;	//주문배송 상세주소
	private String uodMsg;		//주문배송 배송메시지
	
}
