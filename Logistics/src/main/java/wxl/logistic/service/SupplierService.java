package wxl.logistic.service;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.Supplier;

public interface SupplierService {
	//统计记录条数
    public Integer totalPage(Map<String, Object> params);
	
    //分页查询用户信息
    public List<Supplier> selectLimit(Map<String, Object> params);
    
    //添加采购信息
    public int insertSelective(Supplier record);
    
    //修改信息
    public int updateSpPrimaryKeySelective(Supplier record);
    
    //删除信息
    public int deleteSpPrimaryKey(Integer supplierId);
    
    //根据ID查询信息
    public Supplier selectSpPrimaryKey(Integer supplierId);
	

}
