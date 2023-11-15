package head.domain;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class EventDTO {
	private String event_id;
	private String pro_displ_id;
	private String e_title;
	private String e_ltitle;
	private String e_decate;
	private String e_dis;
	private String e_cate;
	private String e_img_src;
	private String e_dimg_src;
	private Date e_start;
	private Date e_end;
	
}
