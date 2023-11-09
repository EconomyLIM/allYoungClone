package order.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DeliveryDTO {

	private String delivery_id;
	private String user_id;
	private String deli_name;
	private String deli_zip;	
	private String deli_road_addr;
	private String deli_addr;
	private String deli_baddr;
	private String deli_recipient;
	private String deli_tel;
	private String deli_tel2;
	private String req_select;
	private String req_content;
	private int def_del;
	
}
