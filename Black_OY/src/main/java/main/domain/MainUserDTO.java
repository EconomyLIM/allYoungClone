package main.domain;



import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MainUserDTO {
	
	private String userId;
	private int gender;
	private Date birth;
	private String skinTone;
	private String skinType;
	
} // class
