package wxl.logistic.service;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.Material;

public interface MaterialService {

    //ͳ�Ƽ�¼����
    public Integer totalPage(Map<String, Object> params);
	
    //��ҳ��ѯ�û���Ϣ
    public List<Material> selectLimit(Map<String, Object> params);
    
    //ɾ����Ϣ
    int deleteByPrimaryKey(Integer materialId);
    
    //�����Ϣ
    int insertSelective(Material record);
    
    //����ID��ѯ��Ϣ
    Material selectByPrimaryKey(Integer materialId);

    //�޸���Ϣ
    int updateByPrimaryKeySelective(Material record);
	
}
