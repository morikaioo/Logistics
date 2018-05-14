package wxl.logistic.dao;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.Material;

public interface MaterialMapper {
    int deleteByPrimaryKey(Integer materialId);

    int insert(Material record);

    int insertSelective(Material record);

    Material selectByPrimaryKey(Integer materialId);

    int updateByPrimaryKeySelective(Material record);

    int updateByPrimaryKey(Material record);
    
    Integer selectCount(Map<String, Object> params);
	
	List<Material> selectLimit(Map<String, Object> params);
}