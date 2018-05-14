package wxl.logistic.dao;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.Buyer;

public interface BuyerMapper {
    int deleteByPrimaryKey(Integer buyerId);

    int insert(Buyer record);

    int insertSelective(Buyer record);

    Buyer selectByPrimaryKey(Integer buyerId);

    int updateByPrimaryKeySelective(Buyer record);

    int updateByPrimaryKey(Buyer record);
    
    Integer selectCount(Map<String, Object> params);
	
	List<Buyer> selectLimit(Map<String, Object> params);
}