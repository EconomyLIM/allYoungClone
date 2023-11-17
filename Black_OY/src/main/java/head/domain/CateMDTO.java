package head.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CateMDTO {
	private String cat_m_id;
	private String cat_l_id;
	private String cat_m_name;
}
