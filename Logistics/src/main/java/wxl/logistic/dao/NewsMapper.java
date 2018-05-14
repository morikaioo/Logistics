package wxl.logistic.dao;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.News;

public interface NewsMapper {
    int deleteByPrimaryKey(Integer newsId);

    int insert(News record);

    int insertSelective(News record);

    News selectByPrimaryKey(Integer newsId);

    int updateByPrimaryKeySelective(News record);

    int updateByPrimaryKey(News record);
    
    Integer selectCount(Map<String, Object> params);
	
	List<News> selectLimit(Map<String, Object> params);
}