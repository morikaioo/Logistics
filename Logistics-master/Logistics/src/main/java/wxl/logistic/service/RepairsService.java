package wxl.logistic.service;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.Repairs;

public interface RepairsService {

	//���뱨����Ϣ
	public int insert(Repairs record);
	
    //ͳ�Ƽ�¼����
    public Integer totalPage(Map<String, Object> params);
	
    //��ҳ��ѯ�û���Ϣ
    public List<Repairs> selectLimit(Map<String, Object> params);
    
    //����ID��ѯ������Ϣ
    public Repairs selectByPrimaryKey(Integer repairsId);
    
    //����ID�޸ı�����Ϣ
    public int updateByPrimaryKeySelective(Repairs record);
    
    //����IDɾ��������Ϣ
    public int deleteByPrimaryKey(Integer repairsId);
	
}
