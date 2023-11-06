package brand;

public class BrandDTO {
   private String BRAND_ID;
   private String BRAND_NAME;
   private int BRAND_LIKE;
   private String BRAND_SUMM;
   private String Brand_Expl;
public String getBRAND_ID() { // 수정필요
	return BRAND_ID;
}
public void setBRAND_ID(String bRAND_ID) {
	BRAND_ID = bRAND_ID;
}
public String getBRAND_NAME() {
	return BRAND_NAME;
}
public void setBRAND_NAME(String pBRAND_NAME) {
	this.BRAND_NAME = pBRAND_NAME;
}
public int getBRAND_LIKE() {
	return BRAND_LIKE;
}
public void setBRAND_LIKE(int pBRAND_LIKE) {
	this.BRAND_LIKE = pBRAND_LIKE;
}
public String getBRAND_SUMM() {
	return BRAND_SUMM;
}
public void setBRAND_SUMM(String pBRAND_SUMM) {
	this.BRAND_SUMM = pBRAND_SUMM;
}
public String getBrand_Expl() {
	return Brand_Expl;
}
public void setBrand_Expl(String pBrand_Expl) {
	this.Brand_Expl = pBrand_Expl;
}
   
  
}
