package wxl.logistic.service;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.News;

public interface NewsService {

	//插入报修信息
	public int insert(News record);
	
	//统计记录条数
    public Integer totalPage(Map<String, Object> params);
	
    //分页查询用户信息
    public List<News> selectLimit(Map<String, Object> params);
    
    //根据ID查询文章信息
    public News selectByPrimaryKey(Integer newsId);
	
    //根据ID删除文章
    public int deleteByPrimaryKey(Integer newsId);
    
    //根据ID修改文章
    public int updateByPrimaryKeySelective(News record);
}
