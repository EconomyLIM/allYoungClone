package main.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class MainBrandDTO {
	 
	private String brand_id;
	private String brand_name;
	private String brand_like;
	private String brand_img_src;
}
