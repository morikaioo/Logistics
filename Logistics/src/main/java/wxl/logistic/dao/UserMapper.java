package wxl.logistic.dao;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.User;

public interface UserMapper {
	
	List<User> selectLike(User user);
	
	Integer selectCount(Map<String, Object> params);
	
	List<User> selectLimit(Map<String, Object> params);
	
    int deleteByPrimaryKey(Integer userId);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer userId);
    
    User selectByName(String username);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
}