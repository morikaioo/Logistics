package wxl.test;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.sql.DataSource;

import wxl.logistic.bean.Buyer;
import wxl.logistic.bean.Material;
import wxl.logistic.bean.News;
import wxl.logistic.bean.Repairs;
import wxl.logistic.bean.Supplier;
import wxl.logistic.bean.User;
import wxl.logistic.dao.BuyerMapper;
import wxl.logistic.dao.MaterialMapper;
import wxl.logistic.dao.NewsMapper;
import wxl.logistic.dao.RepairsMapper;
import wxl.logistic.dao.SupplierMapper;
import wxl.logistic.dao.UserMapper;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class TestSpring {

	ClassPathXmlApplicationContext ctx = null;
	DataSource dataSource = null;

	{
		ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		// dataSource = (DataSource) ctx.getBean("pooledDataSource");
		dataSource = (DataSource) ctx.getBean("pooledDataSource");
	}

	@Test
	public void testData() {
		System.out.println(dataSource);
	}
	
	@Test
	public void testData2() {
		User user = new User(null, "2", "2", "2", "aaa", "2", "2", "2", null);
		UserMapper userMapper = (UserMapper) ctx.getBean("userMapper");
		System.out.println(userMapper.selectLike(user));
	}
	
	@Test
	public void testData7() {
		NewsMapper newsMapper = (NewsMapper) ctx.getBean("newsMapper");
		News news = new News();
		news.setThemeName("热点");
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("start", 0);
		params.put("pageSize",20);
		params.put("cnews", news);
//		newsMapper.selectCount(params);
		newsMapper.selectLimit(params);
	}
	
	@Test
	public void testData1() {
		RepairsMapper repairsMapper = (RepairsMapper) ctx.getBean("repairsMapper");
		Repairs record = new Repairs();
		record.setRepairsPerson("张三");record.setRepairsAddress("9#111");
		record.setRepairsCategory("宿舍报修");record.setRepairsStatus("未处理");
		record.setRepairsContent("电风扇坏了！");
		System.out.println(repairsMapper.insert(record));
	}
	
	@Test
	public void testData0() {
		Map<String, Object> params = new HashMap<String, Object>();
		RepairsMapper repairsMapper = (RepairsMapper) ctx.getBean("repairsMapper");
		Repairs record = new Repairs();
		record.setRepairsPerson("小明");
		params.put("start", 0);
		params.put("pageSize",10);
		params.put("crepairs", record);
		System.out.println(repairsMapper.selectLimit(params));
	}
	
	@Test
    public void sqlSessionFactoryTest() {
		UserMapper userMapper = (UserMapper) ctx.getBean("userMapper");
		Map<String, Object> params = new HashMap<String, Object>();
		User user = new User(null, "xiaoming", "xxxxxx", "12346678", "好", "男", "学生", "学生", null);
		params.put("cuser", user);
		params.put("start", 0);
		params.put("pageSize",10);
		System.out.println(userMapper.selectLimit(params));
    }

	@Test
	public void testData3() {
		UserMapper userMapper = (UserMapper) ctx.getBean("userMapper");
		Map<String, Object> params = new HashMap<String, Object>();
		User user = new User(null, null, null, "12346678", "好", "男", "学生", "学生", null);
		params.put("cuser", user);
		System.out.println(userMapper.selectCount(params));
	}
	
	@Test
	public void testData4() {
		BuyerMapper buyerMapper = (BuyerMapper) ctx.getBean("buyerMapper");
		Buyer buyer = new Buyer();
		buyer.setBuyName(null);
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("start", 0);
		params.put("pageSize",10);
		params.put("cbuyer", buyer);
		System.out.println(buyerMapper.selectLimit(params));
	}
	
	@Test
	public void testData10() {
		SupplierMapper supplierMapper = (SupplierMapper) ctx.getBean("supplierMapper");
		Supplier supplier = new Supplier();
		supplier.setSupplierName(null);
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("start", 0);
		params.put("pageSize",10);
		params.put("csupplier", supplier);
		System.out.println(supplierMapper.selectLimit(params));
	}
	
	@Test
	public void testData5() {
		MaterialMapper materialMapper = (MaterialMapper) ctx.getBean("materialMapper");
		Map<String, Object> params = new HashMap<String, Object>();
		Material material = new Material();
		material.setMaterialCategory("材料");
		params.put("start", 0);
		params.put("pageSize",10);
		params.put("cmaterial", material);
		System.out.println(materialMapper.selectLimit(params));
	}
    
	@Test
	public void testData8() {
		SimpleDateFormat format = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
		System.out.println(format.format(new Date()));
	}
	
}
