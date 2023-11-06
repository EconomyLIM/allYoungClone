package basket.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BasketDTO {
	private String basket_id;
	private String user_id;
	private String product_id;
	private int product_cnt;
}
