package wxl.logistic.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wxl.logistic.bean.User;
import wxl.logistic.dao.UserMapper;
import wxl.logistic.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserMapper userMapper;
	
	public int insert(User user) {
		
		return userMapper.insert(user);
	}

	public User selectByName(String username) {
		
		return userMapper.selectByName(username);
	}

	public List<User> selectLimit(Map<String, Object> params) {
		Integer currPage = (Integer) params.get("start");
		params.put("start", (currPage - 1) * ((Integer)params.get("pageSize")));
		
		return userMapper.selectLimit(params);
	}

	public Integer totalPage(Map<String, Object> params) {
		Integer countAll = userMapper.selectCount(params);
		Integer pageSize = (Integer)params.get("pageSize");
		Integer totalPage = (countAll % pageSize) == 0 ? (countAll / pageSize) : (countAll / pageSize) + 1;

		return totalPage;
	}

	public List<User> selectLike(User user) {
		
		return userMapper.selectLike(user);
	}

	public int updateByPrimaryKeySelective(User record) {
		
		return userMapper.updateByPrimaryKeySelective(record);
	}

}
