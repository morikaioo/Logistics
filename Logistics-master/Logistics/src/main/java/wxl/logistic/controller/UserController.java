package wxl.logistic.controller;



import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import wxl.logistic.bean.User;
import wxl.logistic.service.UserService;
import wxl.logistic.until.MD5Util;



@RequestMapping("/user")
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;

	
	@ResponseBody	
	@RequestMapping(value="/registUser",method=RequestMethod.POST)
	public String registUser(User user,HttpServletRequest request) {
		
		String password = MD5Util.MD5Encode(user.getPassword());
		user.setPassword(password);
		
		Integer judge = 0;
		
		try {
			
			judge = userService.insert(user);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("sql异常!");
			
		}
		
		if (judge==0) {
			
			return "false";
			
		}else if (judge==1) {
			
			return "true";
			
		}else {
			
			return "true";
			
		}
		
	}

	@ResponseBody	
	@RequestMapping(value = "/UserLogin", method = RequestMethod.POST)
	public String userLogin(String username, String password,
			HttpServletRequest request) {
		
		if (username.isEmpty() || password.isEmpty()) {
			
			return "false";
			
		}
		
		User user = userService.selectByName(username);
		String passwordMD5 = MD5Util.MD5Encode(password);
		
		if (user != null && user.getPassword().equals(passwordMD5)) {
			
			request.getSession().setAttribute("username", username);
			request.getSession().setAttribute("uid", user.getUserId());
			request.getSession().setAttribute("trivialName", user.getTrivialName());
			request.getSession().setAttribute("userCategory", user.getCategory());
			request.getSession().setAttribute("privilege", user.getPrivilege());
			request.getSession().setAttribute("userDepartment", user.getDepartment());
			return "true";
			
		} else {
			
			return "false";
		}
		
	}
	
    @RequestMapping(value = "/selectLimit")
    public String selectLimit(Integer currentPage,User user,Model model) {
    	
		Integer pageSize = 7;
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("start", currentPage);
		params.put("pageSize",pageSize);
		params.put("cuser",user);
		
		Integer totalPage = userService.totalPage(params);
		if(null == currentPage || 0 >= currentPage) {
			currentPage = 1;
			params.put("start", currentPage);
		}else if (currentPage>totalPage) {
			currentPage = totalPage;
			params.put("start", currentPage);
		}
		List<User> users = userService.selectLimit(params);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("users", users);
		model.addAttribute("name", user.getTrivialName());
		model.addAttribute("currentPage", currentPage);
        return "/page/user/userInfo";
    }
	
    /**
	 * 用户退出登录操作
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String userLogout(HttpServletRequest request) {
		
		HttpSession httpSession = request.getSession();
		
		// Session判断
		if (httpSession != null) {
			httpSession.invalidate();
		}
		
		//跳转首页
		return "redirect:/page/index.jsp?logout=out";
	}
	
	/**
     * 模糊查询用户信息
     * @param userid
     * @param model
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/selectLikeUser")
    public List<User> selectLikeUser(User user,Model model) {
		
    	List<User> users = null;
    	
		try {
			users = userService.selectLike(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	
        return users;
    }
    
    @ResponseBody	
	@RequestMapping(value="/updateUser",method=RequestMethod.POST)
	public String updateUser(User user,HttpServletRequest request
			,String category) {
		
		Integer judge = 0;
		try {
			user.setRegisterTime(new Date());
			judge = userService.updateByPrimaryKeySelective(user);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("sql异常!");
			
		}
		
		if (judge==0) {
			return "false";
		}else if (judge==1) {
			return "true";
		}else {
			return "true";
		}
		
	}
	
	@RequestMapping(value = "/selectById/{username}")
    public String selectById(@PathVariable("username")String username,
    		Model model,String judge) {
		
		try {
			User user = userService.selectByName(username);
			model.addAttribute("user", user);
		} catch (Exception e) {
			
		}
		
		return "/page/user/editUser";
		
	}
	
}
