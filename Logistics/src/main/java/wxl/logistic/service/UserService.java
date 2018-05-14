package wxl.logistic.service;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.User;

public interface UserService {

	//ע���û���Ϣ
    public int insert(User user);
    
    //�����û�������ѯ�û���Ϣ
    public User selectByName(String username);
    
    //ͳ�Ƽ�¼����
    public Integer totalPage(Map<String, Object> params);
	
    //��ҳ��ѯ�û���Ϣ
    public List<User> selectLimit(Map<String, Object> params);
    
    //ģ����ѯ�û���Ϣ
    public List<User> selectLike(User user);
    
    //�޸��û���Ϣ
    public int updateByPrimaryKeySelective(User record);
	
}
