package wxl.logistic.service;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.Supplier;

public interface SupplierService {
	//ͳ�Ƽ�¼����
    public Integer totalPage(Map<String, Object> params);
	
    //��ҳ��ѯ�û���Ϣ
    public List<Supplier> selectLimit(Map<String, Object> params);
    
    //��Ӳɹ���Ϣ
    public int insertSelective(Supplier record);
    
    //�޸���Ϣ
    public int updateSpPrimaryKeySelective(Supplier record);
    
    //ɾ����Ϣ
    public int deleteSpPrimaryKey(Integer supplierId);
    
    //����ID��ѯ��Ϣ
    public Supplier selectSpPrimaryKey(Integer supplierId);
	

}
