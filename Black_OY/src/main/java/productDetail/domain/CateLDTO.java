package productDetail.domain;

import lombok.EqualsAndHashCode;

@EqualsAndHashCode
public class CateLDTO {

	private String cLId;
	private String cLName;
	
	public String getcLId() {
		return cLId;
	}
	public void setcLId(String cLId) {
		this.cLId = cLId;
	}
	public String getcLName() {
		return cLName;
	}
	public void setcLName(String cLName) {
		this.cLName = cLName;
	}
	public CateLDTO() {
		super();
	}
	public CateLDTO(String cLId, String cLName) {
		super();
		this.cLId = cLId;
		this.cLName = cLName;
	}
	
	
	
	
} // class
