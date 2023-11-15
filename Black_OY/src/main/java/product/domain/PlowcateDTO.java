package product.domain;

public class PlowcateDTO {

	private String sId;
	private String plowcate;
	
	public String getsId() {
		return sId;
	}
	public void setsId(String sId) {
		this.sId = sId;
	}
	public String getPlowcate() {
		return plowcate;
	}
	public void setPlowcate(String plowcate) {
		this.plowcate = plowcate;
	}
	public PlowcateDTO(String sId, String plowcate) {
		super();
		this.sId = sId;
		this.plowcate = plowcate;
	}
	public PlowcateDTO() {
		super();
	}
	
	
	

} // class
