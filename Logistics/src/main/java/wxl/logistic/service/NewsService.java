package wxl.logistic.service;

import java.util.List;
import java.util.Map;

import wxl.logistic.bean.News;

public interface NewsService {

	//���뱨����Ϣ
	public int insert(News record);
	
	//ͳ�Ƽ�¼����
    public Integer totalPage(Map<String, Object> params);
	
    //��ҳ��ѯ�û���Ϣ
    public List<News> selectLimit(Map<String, Object> params);
    
    //����ID��ѯ������Ϣ
    public News selectByPrimaryKey(Integer newsId);
	
    //����IDɾ������
    public int deleteByPrimaryKey(Integer newsId);
    
    //����ID�޸�����
    public int updateByPrimaryKeySelective(News record);
}
