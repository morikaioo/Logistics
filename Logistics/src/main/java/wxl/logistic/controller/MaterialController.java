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

import wxl.logistic.bean.Material;
import wxl.logistic.service.MaterialService;

@RequestMapping("/material")
@Controller
public class MaterialController {
	
	@Autowired
	MaterialService materialService;
	
	@RequestMapping(value = "/selectLimit")
    public String selectLimit(Integer currentPage,Material material,Model model) {
    	
		Integer pageSize = 7;
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("start", currentPage);
		params.put("pageSize",pageSize);
		params.put("cmaterial",material);
		
		Integer totalPage = materialService.totalPage(params);
		if(null == currentPage || 0 >= currentPage) {
			currentPage = 1;
			params.put("start", currentPage);
		}else if (currentPage>totalPage) {
			currentPage = totalPage;
			params.put("start", currentPage);
		}
		List<Material> materials = materialService.selectLimit(params);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("materials", materials);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("materialCategory", material.getMaterialCategory());
        return "/page/employer/material/materialInfo";
    }
	
	@ResponseBody	
	@RequestMapping(value="/insertMaterial",method=RequestMethod.POST)
	public String insertMaterial(Material material,HttpServletRequest request
			,String category) {
		
		Integer judge = 0;
		try {
			if ("edit".equalsIgnoreCase(category)) {
				material.setReceiveTime(new Date());
				material.setUpdateTime(new Date());
				judge = materialService.updateByPrimaryKeySelective(material)+2;
			}else {
				material.setReceiveTime(new Date());
				material.setUpdateTime(new Date());
				judge = materialService.insertSelective(material);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("sql异常!");
			
		}
		if (judge==0) {
			return "false";
		}else if (judge==1) {
			return "true";
		}else if (judge==2) {
			return "false";
		}else if (judge==3) {
			return "true";
		}else {
			return "true";
		}
		
	}
	
	@RequestMapping(value = "/selectById/{materialId}")
    public String selectById(@PathVariable("materialId")Integer materialId,
    		Model model) {
		
		try {
			Material material = materialService.selectByPrimaryKey(materialId);
			model.addAttribute("material", material);
		} catch (Exception e) {
			
		}
		
		return "/page/employer/material/editMaterial";
		
	}
	
	@RequestMapping(value = "/deleteById/{materialId}")
    public String deleteById(@PathVariable("materialId")Integer materialId,
    		Model model,String category) {
		
		try {
			int judge = materialService.deleteByPrimaryKey(materialId);
			model.addAttribute("judge", judge);
		} catch (Exception e) {
			
		}
		
		if ("stuff".equalsIgnoreCase(category)) {
			return "/page/employer/material/stuff";
		}else {
			return "/page/employer/material/tool";
		}
	}
	
}
