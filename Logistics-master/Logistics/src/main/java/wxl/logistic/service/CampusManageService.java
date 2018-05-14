package wxl.logistic.service;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.Buyer;

public interface CampusManageService {

    //统计记录条数
    public Integer totalPage(Map<String, Object> params);
	
    //分页查询用户信息
    public List<Buyer> selectLimit(Map<String, Object> params);
	
}
