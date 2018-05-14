package wxl.logistic.serviceImpl;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wxl.logistic.bean.Supplier;
import wxl.logistic.dao.SupplierMapper;
import wxl.logistic.service.SupplierService;

@Service
public class SupplierServiceImpl implements SupplierService{
	@Autowired
	SupplierMapper supplierMapper;
	
	public Integer totalPage(Map<String, Object> params) {
		
		Integer countAll = supplierMapper.selectCount(params);
		Integer pageSize = (Integer)params.get("pageSize");
		Integer totalPage = (countAll % pageSize) == 0 ? (countAll / pageSize) : (countAll / pageSize) + 1;

		return totalPage;
	}

	public List<Supplier> selectLimit(Map<String, Object> params) {
		Integer currPage = (Integer) params.get("start");
		params.put("start", (currPage - 1) * ((Integer)params.get("pageSize")));
		
		return supplierMapper.selectLimit(params);
	}

	public int insertSelective(Supplier record) {
		
		return supplierMapper.insertSelective(record);
	}

	public int updateSpPrimaryKeySelective(Supplier record) {
		
		return supplierMapper.updateSpPrimaryKeySelective(record);
	}

	public int deleteSpPrimaryKey(Integer supplierId) {
		
		return supplierMapper.deleteSpPrimaryKey(supplierId);
	}

	public Supplier selectSpPrimaryKey(Integer supplierId) {
		
		return supplierMapper.selectSpPrimaryKey(supplierId);
	}
	

}
