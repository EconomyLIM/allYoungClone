package search.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SearchDTO {

	private String prodisplid;
	private String displProName;
	private String lid;
	private String mid;
	private String sId;
}
