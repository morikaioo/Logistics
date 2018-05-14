package wxl.logistic.service;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.User;

public interface UserService {

	//注册用户信息
    public int insert(User user);
    
    //根据用户姓名查询用户信息
    public User selectByName(String username);
    
    //统计记录条数
    public Integer totalPage(Map<String, Object> params);
	
    //分页查询用户信息
    public List<User> selectLimit(Map<String, Object> params);
    
    //模糊查询用户信息
    public List<User> selectLike(User user);
    
    //修改用户信息
    public int updateByPrimaryKeySelective(User record);
	
}
