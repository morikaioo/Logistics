package wxl.logistic.service;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.Buyer;

public interface BuyerService {

    //统计记录条数
    public Integer totalPage(Map<String, Object> params);
	
    //分页查询用户信息
    public List<Buyer> selectLimit(Map<String, Object> params);
    
    //添加采购信息
    public int insertSelective(Buyer record);
    
    //修改信息
    public int updateByPrimaryKeySelective(Buyer record);
    
    //删除信息
    public int deleteByPrimaryKey(Integer buyerId);
    
    //根据ID查询信息
    public Buyer selectByPrimaryKey(Integer buyerId);
	
}
