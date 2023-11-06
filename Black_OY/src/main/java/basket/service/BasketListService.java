package basket.service;

import java.util.List;

import basket.domain.BasketDTO;

public class BasketListService {

	private BasketListService() {}
	private static BasketListService instance = null;
	
	public static BasketListService getInstance() {
		if (instance == null) {
			instance = new BasketListService();
		}
		return instance;
	}
	
	public List<BasketDTO> basketListService(String user_id, String product_id){
		
		return null;
	}
	
}
