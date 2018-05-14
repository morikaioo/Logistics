package wxl.logistic.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wxl.logistic.bean.Material;
import wxl.logistic.dao.MaterialMapper;
import wxl.logistic.service.MaterialService;

@Service
public class MaterialServiceImpl implements MaterialService{

	@Autowired
	MaterialMapper materialMapper;
	
	public Integer totalPage(Map<String, Object> params) {
		
		Integer countAll = materialMapper.selectCount(params);
		Integer pageSize = (Integer)params.get("pageSize");
		Integer totalPage = (countAll % pageSize) == 0 ? (countAll / pageSize) : (countAll / pageSize) + 1;

		return totalPage;
	}

	public List<Material> selectLimit(Map<String, Object> params) {
		
		Integer currPage = (Integer) params.get("start");
		params.put("start", (currPage - 1) * ((Integer)params.get("pageSize")));
		
		return materialMapper.selectLimit(params);
	}

	public int deleteByPrimaryKey(Integer materialId) {
		
		return materialMapper.deleteByPrimaryKey(materialId);
	}

	public int insertSelective(Material record) {
		
		return materialMapper.insertSelective(record);
	}

	public Material selectByPrimaryKey(Integer materialId) {
		
		return materialMapper.selectByPrimaryKey(materialId);
	}

	public int updateByPrimaryKeySelective(Material record) {
		
		return materialMapper.updateByPrimaryKeySelective(record);
	}
	
}
