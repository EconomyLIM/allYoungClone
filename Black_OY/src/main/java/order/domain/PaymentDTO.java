package order.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PaymentDTO {
	private String pay_id;
	private String order_id;
	private int total_price;
	private int pay_price;
	private int delivery_price;
	private int cd_price;
	private int point_price;
	private String pay_type;
	private int saved_money;
	private Date pay_date;
	private String pay_status;
	private String card_type;
	private String inst_type;
	private String cr_check;
	
}
