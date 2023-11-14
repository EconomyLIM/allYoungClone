package order.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CouponDTO {
	private String coupon_id;
	private String coup_cate;
	private String coup_name;
	private double coup_price;
	private int coup_condition;
}
