package wxl.logistic.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import wxl.logistic.bean.News;
import wxl.logistic.service.NewsService;

@RequestMapping("/news")
@Controller
public class NewsController {

	@Autowired
	NewsService newsService;
	
	@RequestMapping(value="/addNews", method= RequestMethod.POST)
	public String addNews(News news,
			@RequestParam("file") MultipartFile file, 
			HttpServletRequest request,String category) {
		
		if ("edit".equalsIgnoreCase(category)) {
			news.setModifyDate(new SimpleDateFormat("YYYY-MM-dd HH:mm:ss").format(new Date()));
			news.setCreateDate(new SimpleDateFormat("YYYY-MM-dd HH:mm:ss").format(new Date()));
		}else {
			news.setCreateDate(new SimpleDateFormat("YYYY-MM-dd HH:mm:ss").format(new Date())); 
		}
		
		Integer judge = 0;
		
		if(!file.isEmpty()) {
			
			//获取文件的名字
			String fileName = file.getOriginalFilename();
			String filePath = request.getSession().getServletContext().getRealPath("/")
					+ "upload/";
			
			File filePath2 = new File(filePath);
			
			//如果该目录不存在，则创建该目录
			if(!filePath2.exists()) {
				filePath2.mkdir();
			}
			
			//文件名后缀
			String suffix = fileName.substring(fileName.lastIndexOf("."));
			
			//新文件名
			String fileNameNew = UUID.randomUUID() + suffix;
			String savePath = filePath + fileNameNew;
			
			//添加文章
			news.setImgpath("upload/"+fileNameNew);
			if ("edit".equalsIgnoreCase(category)) {
				judge = newsService.updateByPrimaryKeySelective(news)+2;
			}else {
				judge = newsService.insert(news);
			}
			
			try {	
				file.transferTo(new File(savePath));
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		if ("edit".equalsIgnoreCase(category)) {
			return "redirect://page/student/allNews.jsp?judge="+judge;
		}else {
			return "redirect:/page/student/addNews.jsp?judge="+judge;
		}
		
	}
	
	@RequestMapping(value = "/selectLimit")
    public String selectLimit(Integer currentPage,
    		News news,Model model,String judge,
    		@RequestParam(value="",defaultValue="6")Integer pageSize) {
    	
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("start", currentPage);
		params.put("pageSize",pageSize);
		params.put("cnews",news);
		
		Integer totalPage = newsService.totalPage(params);
		if(null == currentPage || 0 >= currentPage) {
			currentPage = 1;
			params.put("start", currentPage);
		}else if (currentPage>totalPage) {
			currentPage = totalPage;
			params.put("start", currentPage);
		}
		List<News> newss = newsService.selectLimit(params);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("newss", newss);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("judge", judge);
		if ("all".equalsIgnoreCase(judge)) {
			return "/page/student/newsListInfo";
		}else {
			return "/page/student/newsImgInfo";
		}
        
    }
	
	@RequestMapping(value = "/selectById/{newsId}")
    public String selectById(@PathVariable("newsId")Integer newsId,
    		Model model,String judge) {
		
		try {
			News news = newsService.selectByPrimaryKey(newsId);
			model.addAttribute("news", news);
		} catch (Exception e) {
			
		}
		
		if ("edit".equalsIgnoreCase(judge)) {
			return "/page/student/editNews";
		}else {
			return "/page/student/newsDetailInfo";
		}
		
	}
	
	@RequestMapping(value = "/deleteById/{newsId}")
    public String deleteById(@PathVariable("newsId")Integer newsId,
    		Model model) {
		
		try {
			int judge = newsService.deleteByPrimaryKey(newsId);
			model.addAttribute("judge", judge);
		} catch (Exception e) {
			
		}
		
		return "/page/student/allNews";
	}
	
}
