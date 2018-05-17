package wxl.logistic.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wxl.logistic.bean.Buyer;
import wxl.logistic.dao.BuyerMapper;
import wxl.logistic.service.BuyerService;

@Service
public class BuyerServiceImpl implements BuyerService{

	@Autowired
	BuyerMapper buyerMapper;
	
	public Integer totalPage(Map<String, Object> params) {
		
		Integer countAll = buyerMapper.selectCount(params);
		Integer pageSize = (Integer)params.get("pageSize");
		Integer totalPage = (countAll % pageSize) == 0 ? (countAll / pageSize) : (countAll / pageSize) + 1;

		return totalPage;
	}

	public List<Buyer> selectLimit(Map<String, Object> params) {
		Integer currPage = (Integer) params.get("start");
		params.put("start", (currPage - 1) * ((Integer)params.get("pageSize")));
		
		return buyerMapper.selectLimit(params);
	}

	public int insertSelective(Buyer record) {
		
		return buyerMapper.insertSelective(record);
	}

	public int updateByPrimaryKeySelective(Buyer record) {
		
		return buyerMapper.updateByPrimaryKeySelective(record);
	}

	public int deleteByPrimaryKey(Integer buyerId) {
		
		return buyerMapper.deleteByPrimaryKey(buyerId);
	}

	public Buyer selectByPrimaryKey(Integer buyerId) {
		
		return buyerMapper.selectByPrimaryKey(buyerId);
	}

	@Override
	public Integer updateBatchStatus(List<Integer> buyIds) {
		
		return buyerMapper.updateBatchStatus(buyIds);
	}
	
}
