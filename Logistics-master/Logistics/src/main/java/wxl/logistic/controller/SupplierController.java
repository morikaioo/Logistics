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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import wxl.logistic.bean.Supplier;
import wxl.logistic.service.SupplierService;

@RequestMapping("/supplier")
@Controller

public class SupplierController {
	@Autowired
	SupplierService supplierService;
	@RequestMapping(value = "/selectLimit")
    public String selectLimit(Integer currentPage,Supplier supplier,Model model) {
    	
    	
		Integer pageSize = 7;
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("start", currentPage);
		params.put("pageSize",pageSize);
		params.put("csupplier",supplier);
		
		Integer totalPage = supplierService.totalPage(params);
		if(null == currentPage || 0 >= currentPage) {
			currentPage = 1;
			params.put("start", currentPage);
		}else if (currentPage>totalPage) {
			currentPage = totalPage;
			params.put("start", currentPage);
		}
		List<Supplier> suppliers = supplierService.selectLimit(params);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("suppliers", suppliers);
		model.addAttribute("currentPage", currentPage);
        return "/page/employer/buyer/supplierInfo";
    }
	
	@RequestMapping(value = "/selectForIndex")
    public String selectForIndex(@RequestParam(value="currentPage",defaultValue="1")Integer currentPage,Supplier supplier,
    		@RequestParam(value="pageSize",defaultValue="8")Integer pageSize,Model model) {
    	
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("start", currentPage);
		params.put("pageSize",pageSize);
		params.put("csupplier",supplier);
		
		List<Supplier> suppliers = supplierService.selectLimit(params);
		model.addAttribute("suppliers", suppliers);
        return "/page/employer/buyer/indexSupplierInfo";
    }
	@ResponseBody	
	@RequestMapping(value="/insertSupplier",method=RequestMethod.POST)
	public String insertSupplier(Supplier supplier,HttpServletRequest request
			,String category) {
		
		Integer judge = 0;
		try {
			if ("edit".equalsIgnoreCase(category)) {
				supplier.setUpdateTime(new Date());
				judge = supplierService.updateSpPrimaryKeySelective(supplier)+2;
			}else {
				supplier.setUpdateTime(new Date());
				judge = supplierService.insertSelective(supplier);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("sql“Ï≥£!");
			
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
	@RequestMapping(value = "/selectSpId/{supplierId}")
    public String selectSpId(@PathVariable("supplierId")Integer supplierId,
    		Model model,String judge) {
		
		try {
			Supplier supplier = supplierService.selectSpPrimaryKey(supplierId);
			model.addAttribute("supplier", supplier);
		} catch (Exception e) {
			
		}
		
		return "/page/employer/buyer/editSupplier";
		
	}
	@RequestMapping(value = "/deleteSpId/{supplierId}")
    public String deleteSpId(@PathVariable("supplierId")Integer supplierId,
    		Model model,String category) {
		
		try {
			int judge = supplierService.deleteSpPrimaryKey(supplierId);
			model.addAttribute("judge", judge);
		} catch (Exception e) {
			
		}
		
		return "/page/employer/buyer/supplier";
	}
}
