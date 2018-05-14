package wxl.logistic.dao;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.Repairs;

public interface RepairsMapper {
    int deleteByPrimaryKey(Integer repairsId);

    int insert(Repairs record);

    int insertSelective(Repairs record);

    Repairs selectByPrimaryKey(Integer repairsId);

    int updateByPrimaryKeySelective(Repairs record);

    int updateByPrimaryKey(Repairs record);
    
    Integer selectCount(Map<String, Object> params);
	
	List<Repairs> selectLimit(Map<String, Object> params);
}