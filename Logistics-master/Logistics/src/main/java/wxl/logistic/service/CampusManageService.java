package wxl.logistic.service;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.Buyer;

public interface CampusManageService {

    //ͳ�Ƽ�¼����
    public Integer totalPage(Map<String, Object> params);
	
    //��ҳ��ѯ�û���Ϣ
    public List<Buyer> selectLimit(Map<String, Object> params);
	
}
