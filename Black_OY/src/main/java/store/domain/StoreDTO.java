
package store.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class StoreDTO {
	private String store_id;
	private String district_id;
	private String store_name;
	private String store_tel;
	private String store_addr;
	private String store_dir;
	private String store_parking;
	private String store_spec;
	private int store_fav;
	private double lat;
	private double lng;
}
