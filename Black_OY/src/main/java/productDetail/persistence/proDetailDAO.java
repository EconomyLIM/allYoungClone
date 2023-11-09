package productDetail.persistence;

import java.sql.Connection;
import java.util.List;

import productDetail.domain.CateLDTO;
import productDetail.domain.CateMDTO;
import productDetail.domain.CateSDTO;

public interface proDetailDAO {

	// 1. 대분류 카테고리 가져오기
	public List<CateLDTO> selectCLlist (Connection conn) throws Exception;
	
	// 2. 중분류 카테고리 가져오기
	public List<CateMDTO> selectCMlist (Connection conn) throws Exception;
	
	// 3. 소분류 카테고리 가져오기
	public List<CateSDTO> selectCSlist (Connection conn) throws Exception;
	
	
} // interface
