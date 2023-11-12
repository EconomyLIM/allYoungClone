package head.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class GiftCardDTO {
	private String giftcard_id;
	private String gc_name;
	private String gc_cate;
	private String gc_img_src;
}
