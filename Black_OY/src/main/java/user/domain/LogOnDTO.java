package user.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class LogOnDTO {
	private String user_id;
	private String u_name;
	private String u_pwd;
	private String u_tel;
	private String u_birth;
	private String u_email;
	private String grade_id;
	private int u_point;
}
