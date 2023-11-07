package brand.persistence;

import java.util.List;

import brand.domain.BrandDTO;

public interface BrandDAO {
	List<BrandDTO> getAllBrandsDetails() throws Exception;
}
