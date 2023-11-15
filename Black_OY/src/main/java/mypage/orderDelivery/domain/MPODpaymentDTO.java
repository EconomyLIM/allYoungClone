package mypage.orderDelivery.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MPODpaymentDTO {
	
	private int uodOrderPrice;		//결제 주문금액
	private int uodProPrice;		//결제 총상품금액
	private int uodDeliPrice;		//결제 배송비
	private int uodCouponPrice;		//결제 쿠폰금액
	private int uodEtcPrice;		//결제 포인트및기타결제금액
	private int uodPayPrice;		//결제 총결제금액
	private String uodPayType;		//결제 결제수단
	private String uodCardType;		//결제 카드종류
	private String uodInstType;		//결제 할부종류
	private Date uodPayDate;		//결제 결제일자
	
	//환불
	//환불총상품 + 포인트.. 위의 결제 사용
	private Date uodRFPayDate;		//환불 환불일자
	private int uodRFPrice;			//환불 환불금액
	
}
