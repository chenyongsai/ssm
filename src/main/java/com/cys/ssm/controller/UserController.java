package com.cys.ssm.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cys.ssm.model.PageSource;
import com.cys.ssm.model.User;
import com.cys.ssm.service.IUserService;
import com.cys.ssm.util.PageUtil;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;  


@Controller    
@RequestMapping("/user") 
public class UserController {
	
	@Resource    
    private IUserService userService;    
        
	@RequestMapping("/userAddJsp")
	public String userAddJsp(HttpServletRequest request, Model model) {
		return "user/userAdd";
	}
	
    @RequestMapping("/userList")    
    public String userList(HttpServletRequest request,Model model,User user){    
        List<User> uList = userService.getList(user);
        model.addAttribute("uList", uList);    
        return "user/userList";    
    }
    
    @RequestMapping("/userListPage")
    public String userListPage(Model model,User user,PageSource ps)
    {
    	Page<User> page = PageHelper.startPage(ps.getPageNum(), ps.getPageSize());
        List<User> uList = userService.getList(user);
        model.addAttribute("user", user);    
        model.addAttribute("uList", uList);    
        PageUtil.setPage(model,page);
        return "user/userListPage";
    }
        
    @RequestMapping("/userAdd")
    @ResponseBody
    public void userAdd(HttpServletRequest request,Model model,User user){    
        userService.add(user);
    }    
    
    @RequestMapping("/userInfo")
	public String userInfo(HttpServletRequest request, Model model,User user) {
    	User entity = userService.get(user.getId());
    	model.addAttribute("user", entity);
		return "user/userInfo";
	}
    
    @RequestMapping("/userUpdate")
    @ResponseBody
	public void userUpdate(HttpServletRequest request, Model model,User user) {
    	userService.update(user);
	}
    
    @RequestMapping("/userDelete")
    @ResponseBody
    public void userDelete(HttpServletRequest request,Model model,User user){    
        userService.delete(user.getId());
    }    
    
    @RequestMapping("/index")
	public String index(HttpServletRequest request, Model model) {
		return "user/index";
	}
    
}
