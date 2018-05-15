package wxl.logistic.serviceImpl;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wxl.logistic.bean.News;
import wxl.logistic.dao.NewsMapper;
import wxl.logistic.service.NewsService;

@Service
public class NewsServiceImpl implements NewsService{

	@Autowired
	NewsMapper newsMapper;
	
	public int insert(News record) {
		
		return newsMapper.insert(record);
	}

	public Integer totalPage(Map<String, Object> params) {
		
		Integer countAll = newsMapper.selectCount(params);
		Integer pageSize = (Integer)params.get("pageSize");
		Integer totalPage = (countAll % pageSize) == 0 ? (countAll / pageSize) : (countAll / pageSize) + 1;

		return totalPage;
	}

	public List<News> selectLimit(Map<String, Object> params) {
		
		Integer currPage = (Integer) params.get("start");
		params.put("start", (currPage - 1) * ((Integer)params.get("pageSize")));
		
		return newsMapper.selectLimit(params);
	}

	public News selectByPrimaryKey(Integer newsId) {
		
		return newsMapper.selectByPrimaryKey(newsId);
	}

	public int deleteByPrimaryKey(Integer newsId) {
		
		return newsMapper.deleteByPrimaryKey(newsId);
	}

	public int updateByPrimaryKeySelective(News record) {
		
		return newsMapper.updateByPrimaryKey(record);
	}

	
	
}
