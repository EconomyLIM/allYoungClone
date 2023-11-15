package basket.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class basketList {

	private String user_id;
	private String product_id;
	private String product_cnt;
	
}
