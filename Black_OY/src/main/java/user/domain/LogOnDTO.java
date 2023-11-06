package user.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LogOnDTO {
	
	
	private String user_id;
	private String u_name;
	private String u_pwd;
	private String grade_id;
}
