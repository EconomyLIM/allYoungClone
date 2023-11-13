package mypage.main.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MpOrderStateDTO {
	
	private int uorderState1;	//주문상태별 갯수 - 주문접수
	private int uorderState2;	//주문상태별 갯수 - 결제완료
	private int uorderState3;	//주문상태별 갯수 - 배송준비중
	private int uorderState4;	//주문상태별 갯수 - 배송중
	private int uorderState5;	//주문상태별 갯수 - 배송완료
	
	
}
