package order.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class UserCouponDTO {
	private String uc_id;
	private String user_id;
	private String coupon_id;
	private String coup_cate;
	private String coup_name;
	private double coup_price;
	private int coup_condition;
	private Date coup_start;
	private Date coup_end;
}
