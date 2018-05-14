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

import wxl.logistic.bean.Buyer;
import wxl.logistic.service.BuyerService;

@RequestMapping("/buyer")
@Controller
public class BuyerController {
	
	@Autowired
	BuyerService buyerService;
	
	@RequestMapping(value = "/selectLimit")
    public String selectLimit(Integer currentPage,Buyer buyer,Model model) {
    	
    	
		Integer pageSize = 7;
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("start", currentPage);
		params.put("pageSize",pageSize);
		params.put("cbuyer",buyer);
		
		Integer totalPage = buyerService.totalPage(params);
		if(null == currentPage || 0 >= currentPage) {
			currentPage = 1;
			params.put("start", currentPage);
		}else if (currentPage>totalPage) {
			currentPage = totalPage;
			params.put("start", currentPage);
		}
		List<Buyer> buyers = buyerService.selectLimit(params);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("buyers", buyers);
		model.addAttribute("currentPage", currentPage);
        return "/page/employer/buyer/buyerInfo";
    }
	
	@RequestMapping(value = "/selectForIndex")
    public String selectForIndex(@RequestParam(value="currentPage",defaultValue="1")Integer currentPage,Buyer buyer,
    		@RequestParam(value="pageSize",defaultValue="8")Integer pageSize,Model model) {
    	
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("start", currentPage);
		params.put("pageSize",pageSize);
		params.put("cbuyer",buyer);
		
		List<Buyer> buyers = buyerService.selectLimit(params);
		model.addAttribute("buyers", buyers);
        return "/page/employer/buyer/indexBuyerInfo";
    }
	
	@ResponseBody	
	@RequestMapping(value="/insertBuyer",method=RequestMethod.POST)
	public String insertBuyer(Buyer buyer,HttpServletRequest request
			,String category) {
		
		Integer judge = 0;
		try {
			if ("edit".equalsIgnoreCase(category)) {
				buyer.setBuyDate(new Date());
				
				judge = buyerService.updateByPrimaryKeySelective(buyer)+2;
			}else {
				buyer.setBuyDate(new Date());
				
				judge = buyerService.insertSelective(buyer);
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
	
	@RequestMapping(value = "/selectById/{buyerId}")
    public String selectById(@PathVariable("buyerId")Integer buyerId,
    		Model model,String judge) {
		
		try {
			Buyer buyer = buyerService.selectByPrimaryKey(buyerId);
			model.addAttribute("buyer", buyer);
		} catch (Exception e) {
			
		}
		
		return "/page/employer/buyer/editBuyer";
		
	}
	
	@RequestMapping(value = "/deleteById/{buyerId}")
    public String deleteById(@PathVariable("buyerId")Integer buyerId,
    		Model model,String category) {
		
		try {
			int judge = buyerService.deleteByPrimaryKey(buyerId);
			model.addAttribute("judge", judge);
		} catch (Exception e) {
			
		}
		
		return "/page/employer/buyer/buyer";
	}

	
}
