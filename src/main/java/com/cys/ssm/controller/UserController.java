package com.cys.ssm.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cys.ssm.model.User;
import com.cys.ssm.service.IUserService;  


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
