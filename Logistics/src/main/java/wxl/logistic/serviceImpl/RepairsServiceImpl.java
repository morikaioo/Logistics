package wxl.logistic.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wxl.logistic.bean.Repairs;
import wxl.logistic.dao.RepairsMapper;
import wxl.logistic.service.RepairsService;

@Service
public class RepairsServiceImpl implements RepairsService{

	@Autowired
	RepairsMapper repairsMapper;
	
	public Integer totalPage(Map<String, Object> params) {
		
		Integer countAll = repairsMapper.selectCount(params);
		Integer pageSize = (Integer)params.get("pageSize");
		Integer totalPage = (countAll % pageSize) == 0 ? (countAll / pageSize) : (countAll / pageSize) + 1;

		return totalPage;
	}

	public List<Repairs> selectLimit(Map<String, Object> params) {
		
		Integer currPage = (Integer) params.get("start");
		params.put("start", (currPage - 1) * ((Integer)params.get("pageSize")));
		
		return repairsMapper.selectLimit(params);
	}

	public int insert(Repairs record) {
		
		return repairsMapper.insert(record);
	}

	public Repairs selectByPrimaryKey(Integer repairsId) {
		
		return repairsMapper.selectByPrimaryKey(repairsId);
	}

	public int updateByPrimaryKeySelective(Repairs record) {
		
		return repairsMapper.updateByPrimaryKeySelective(record);
	}

	public int deleteByPrimaryKey(Integer repairsId) {
		
		return repairsMapper.deleteByPrimaryKey(repairsId);
	}
	
}
