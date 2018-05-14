package wxl.logistic.dao;

import wxl.logistic.bean.CampusManage;

public interface CampusManageMapper {
    int deleteByPrimaryKey(Integer campusId);

    int insert(CampusManage record);

    int insertSelective(CampusManage record);

    CampusManage selectByPrimaryKey(Integer campusId);

    int updateByPrimaryKeySelective(CampusManage record);

    int updateByPrimaryKey(CampusManage record);
}