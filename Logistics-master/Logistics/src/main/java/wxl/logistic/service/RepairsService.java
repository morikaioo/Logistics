package wxl.logistic.service;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.Repairs;

public interface RepairsService {

	//插入报修信息
	public int insert(Repairs record);
	
    //统计记录条数
    public Integer totalPage(Map<String, Object> params);
	
    //分页查询用户信息
    public List<Repairs> selectLimit(Map<String, Object> params);
    
    //根据ID查询报修信息
    public Repairs selectByPrimaryKey(Integer repairsId);
    
    //根据ID修改报修信息
    public int updateByPrimaryKeySelective(Repairs record);
    
    //根据ID删除报修信息
    public int deleteByPrimaryKey(Integer repairsId);
	
}
