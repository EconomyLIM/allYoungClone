package user.domain;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class OuserDTO {
	private String user_id;
	private String u_name;
	private String u_pwd;
	private String u_tel;
	private Date u_birth;
	private  int u_gender;
	private String u_email;
	private String grade_id;
	private int u_point;

}
