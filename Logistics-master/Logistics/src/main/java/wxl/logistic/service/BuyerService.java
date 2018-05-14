package wxl.logistic.service;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.Buyer;

public interface BuyerService {

    //ͳ�Ƽ�¼����
    public Integer totalPage(Map<String, Object> params);
	
    //��ҳ��ѯ�û���Ϣ
    public List<Buyer> selectLimit(Map<String, Object> params);
    
    //��Ӳɹ���Ϣ
    public int insertSelective(Buyer record);
    
    //�޸���Ϣ
    public int updateByPrimaryKeySelective(Buyer record);
    
    //ɾ����Ϣ
    public int deleteByPrimaryKey(Integer buyerId);
    
    //����ID��ѯ��Ϣ
    public Buyer selectByPrimaryKey(Integer buyerId);
	
}
