package search.domain;

import brand.domain.BrandDTO;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class BrandSearchDTO {

	private String brand_id;
	private String brand_name;
	private String brand_img_src;
}
