package product.domain;

public class PbrandListDTO {
	
	private String brandID;
	private String pBrandName;
	
	public String getBrandID() {
		return brandID;
	}
	public void setBrandID(String brandID) {
		this.brandID = brandID;
	}
	public String getpBrandName() {
		return pBrandName;
	}
	public void setpBrandName(String pBrandName) {
		this.pBrandName = pBrandName;
	}
	
	public PbrandListDTO() {
		super();
	}
	public PbrandListDTO(String brandID, String pBrandName) {
		super();
		this.brandID = brandID;
		this.pBrandName = pBrandName;
	}
} // class
