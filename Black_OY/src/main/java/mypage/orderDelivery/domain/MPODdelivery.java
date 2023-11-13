package mypage.orderDelivery.domain;

import java.util.Date;

public class MPODdelivery {
	private Date uodDate;		//주문배송 주문일자
	private int uodamount;		//주문배송 수량
	private String uodOrderId;	//주문배송 주문id
	private String uodDisplN;	//주문배송 상품표시명
	private String uodDisplsrc;	//주문배송 상품표시이미지경로
	private String uodBrand;	//주문배송 브랜드명
	private int uodorderPrice;	//주문배송 주문금액
	private String uodState;	//주문배송 상태
	private Date uodRFdate;		//주문배송 처리일자(환불, 교환등등)
	
	//상세보기
	private String uodRecip;	//주문배송 받는사람(배송지-받는사람)
	private String uodTel1;		//주문배송 연락처1
	private String uodTel2;		//주문배송 연락처2
	private String uodAddr;		//주문배송 지번주소
	private String uodRAddr;	//주문배송 도로명주소
	private String uodBAddr;	//주문배송 상세주소
	private int uodTotPrdPrice;	//주문배송 총 상품금액
	
}
