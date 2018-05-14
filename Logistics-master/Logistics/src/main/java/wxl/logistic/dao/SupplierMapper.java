package wxl.logistic.dao;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.Supplier;

public interface SupplierMapper {
	int deleteSpPrimaryKey(Integer supplierId) ;

    int insert(Supplier record) ;

    int insertSelective(Supplier record);

    Supplier selectSpPrimaryKey(Integer supplierId) ;

    int updateSpPrimaryKeySelective(Supplier record) ;

    int updateSpPrimaryKey(Supplier record);
    
    Integer selectCount(Map<String, Object> params);
	
	List<Supplier> selectLimit(Map<String, Object> params);

}
