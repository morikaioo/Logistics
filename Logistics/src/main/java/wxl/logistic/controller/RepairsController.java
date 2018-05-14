package wxl.logistic.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import wxl.logistic.bean.Repairs;
import wxl.logistic.service.RepairsService;

@RequestMapping("/repairs")
@Controller
public class RepairsController {

	@Autowired
	RepairsService repairsService;
	
	@ResponseBody	
	@RequestMapping(value="/guarantee",method=RequestMethod.POST)
	public String guarantee(Repairs repair,HttpServletRequest request) {
		
		int judge = 0;
		if ("Àﬁ…·Œ¨–ﬁ".equalsIgnoreCase(repair.getRepairsCategory())) {
			repair.setRepairsStatus("¥˝Œ¨–ﬁ");
		}else if ("ΩÃ “Œ¨–ﬁ".equalsIgnoreCase(repair.getRepairsCategory())) {
			repair.setRepairsStatus("¥˝Œ¨–ﬁ");
		}else if ("–£‘∞¬ÃªØ".equalsIgnoreCase(repair.getRepairsCategory())) {
			repair.setRepairsStatus("¥˝¬ÃªØ");
		}else if ("…Ë ©Œ¨ª§".equalsIgnoreCase(repair.getRepairsCategory())) {
			repair.setRepairsStatus("¥˝Œ¨ª§");
		}else {
			repair.setRepairsStatus("¥˝±£Ω‡");
		}
		
		try {
			judge = repairsService.insert(repair);
		} catch (Exception e) {
		}
		
		return judge+"";
	}
	
	@RequestMapping(value = "/selectLimit")
    public String selectLimit(Integer currentPage,Repairs repairs,
    		String judge,Model model) {
    	
		Integer pageSize = 7;
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("start", currentPage);
		params.put("pageSize",pageSize);
		params.put("crepairs",repairs);
		
		Integer totalPage = repairsService.totalPage(params);
		if(null == currentPage || 0 >= currentPage) {
			currentPage = 1;
			params.put("start", currentPage);
		}else if (currentPage>totalPage) {
			currentPage = totalPage;
			params.put("start", currentPage);
		}
		List<Repairs> repairss = repairsService.selectLimit(params);
		if ("Àﬁ…·Œ¨–ﬁ".equalsIgnoreCase(repairs.getRepairsCategory())) {
			model.addAttribute("category", "…·");
		}else if ("ΩÃ “Œ¨–ﬁ".equalsIgnoreCase(repairs.getRepairsCategory())) {
			model.addAttribute("category", "ΩÃ");
		}else if ("–£‘∞¬ÃªØ".equalsIgnoreCase(repairs.getRepairsCategory())) {
			model.addAttribute("category", "¬Ã");
		}else if ("…Ë ©Œ¨ª§".equalsIgnoreCase(repairs.getRepairsCategory())) {
			model.addAttribute("category", "Œ¨");
		}else {
			model.addAttribute("category", "Ω‡");
		}
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("repairss", repairss);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("repairsCategory", repairs.getRepairsCategory());
		
		if ("s".equalsIgnoreCase(judge)) {
			return "/page/student/guaranteeInfo";
		}else if ("j".equalsIgnoreCase(judge)) {
			return "/page/teacher/guaranteeInfo";
		}else {
			return "/page/employer/campus/guaranteeInfo";
		}
    }
	
	@RequestMapping(value = "/selectById/{repairsId}")
    public String selectById(@PathVariable("repairsId")Integer repairsId,
    		String category,Model model) {
		
		try {
			Repairs repairs = repairsService.selectByPrimaryKey(repairsId);
			model.addAttribute("repairs", repairs);
		} catch (Exception e) {
			
		}
		
		if ("s".equalsIgnoreCase(category)) {
			return "/page/student/detailInfo";
		}else if ("j".equalsIgnoreCase(category)) {
			return "/page/teacher/detailInfo";
		}else {
			return "/page/employer/campus/detailInfo";
		}
	}
	
	@RequestMapping(value = "/selectByCategory")
    public String selectByCategory(Repairs repairs,
    		String judge,Model model) {
    	
		Integer pageSize = 8;
		Integer currentPage = 1;
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("start", currentPage);
		params.put("pageSize",pageSize);
		params.put("crepairs",repairs);
		
		List<Repairs> repairss = repairsService.selectLimit(params);
		
		model.addAttribute("repairss", repairss);
		model.addAttribute("judge", judge);
		if ("s".equalsIgnoreCase(judge)) {
			model.addAttribute("category", "…·");
		}else {
			model.addAttribute("category", "¬Ã");
		}
		return "/page/common/indexInfo";
		
    }
	
	@RequestMapping(value = "/updateById")
    public String updateById(Repairs record,
    		String category,Model model) {
		record.setHandleTime(new Date());
		try {
			int judge = repairsService.updateByPrimaryKeySelective(record);
			model.addAttribute("status", judge);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if ("Àﬁ…·Œ¨–ﬁ".equalsIgnoreCase(category)) {
			return "/page/student/repair";
		}else if ("Àﬁ…·±£Ω‡".equalsIgnoreCase(category)) {
			return "/page/student/sanitation";
		}else if ("ΩÃ “Œ¨–ﬁ".equalsIgnoreCase(category)) {
			return "/page/teacher/repair";
		}else if ("Œ¿…˙±£Ω‡".equalsIgnoreCase(category)) {
			return "/page/teacher/sanitation";
		}else if ("…Ë ©Œ¨ª§".equalsIgnoreCase(category)) {
			return "/page/employer/campus/facility";
		}else if ("–£‘∞¬ÃªØ".equalsIgnoreCase(category)) {
			return "/page/employer/campus/greening";
		}else {
			return "/page/employer/campus/clean";
		}
	}
	
	@RequestMapping(value = "/deleteById/{repairsId}")
    public String deleteById(@PathVariable("repairsId")Integer repairsId,
    		String category,Model model) {
		
		try {
			int judge = repairsService.deleteByPrimaryKey(repairsId);
			model.addAttribute("judge", judge);
		} catch (Exception e) {
			
		}
		
		if ("Àﬁ…·Œ¨–ﬁ".equalsIgnoreCase(category)) {
			return "/page/student/repair";
		}else if ("Àﬁ…·±£Ω‡".equalsIgnoreCase(category)) {
			return "/page/student/sanitation";
		}else if ("ΩÃ “Œ¨–ﬁ".equalsIgnoreCase(category)) {
			return "/page/teacher/repair";
		}else if ("Œ¿…˙±£Ω‡".equalsIgnoreCase(category)) {
			return "/page/teacher/sanitation";
		}else if ("…Ë ©Œ¨ª§".equalsIgnoreCase(category)) {
			return "/page/employer/campus/facility";
		}else if ("–£‘∞¬ÃªØ".equalsIgnoreCase(category)) {
			return "/page/employer/campus/greening";
		}else {
			return "/page/employer/campus/clean";
		}
	}
	
}
