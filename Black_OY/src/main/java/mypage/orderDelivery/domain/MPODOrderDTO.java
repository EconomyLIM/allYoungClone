package mypage.orderDelivery.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MPODOrderDTO {
	
	private Date uodDate;		//주문배송 주문일자
	private String uodOrderId;	//주문배송 주문id
	private String uodBrand;	//주문배송 브랜드명
	private String uodDisplN;	//주문배송 상품표시명
	private String uodDisplsrc;	//주문배송 상품표시이미지경로
	private String uodProN;		//주문배송 상품이름
	private int uodamount;		//주문배송 수량(주문상품-상품수량)
	private int uodorderPrice;	//주문배송 주문금액(총결제금액)
	private String uodState;	//주문배송 상태(주문-주문상태)
	private Date uodRFdate;		//주문배송 처리일자(환불-환불일자)
	private String uodRFReason;	//주문배송 환불사유(환불-환불사유)
	
	//상세보기 사용
	private int uodProPrice;	//주문배송 상품판매가(상품-상품가격)
	
	
}
