package wxl.logistic.service;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.Material;

public interface MaterialService {

    //统计记录条数
    public Integer totalPage(Map<String, Object> params);
	
    //分页查询用户信息
    public List<Material> selectLimit(Map<String, Object> params);
    
    //删除信息
    int deleteByPrimaryKey(Integer materialId);
    
    //添加信息
    int insertSelective(Material record);
    
    //根据ID查询信息
    Material selectByPrimaryKey(Integer materialId);

    //修改信息
    int updateByPrimaryKeySelective(Material record);
	
}
