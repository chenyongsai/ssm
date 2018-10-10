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
        
	@RequestMapping("/toAdd")
	public String toAdd(HttpServletRequest request, Model model) {
		return "user/add";
	}
	
    @RequestMapping("/userList")    
    public String userList(HttpServletRequest request,Model model,User user){    
        List<User> uList = userService.getUserList(user);    
        model.addAttribute("uList", uList);    
        return "user/userList";    
    }    
        
    @RequestMapping("/addUser")
    @ResponseBody
    public void addUser(HttpServletRequest request,Model model,User user){    
        userService.addUser(user);
    }    
    
    @RequestMapping("/userInfo")
	public String userInfo(HttpServletRequest request, Model model,User user) {
    	User entity = userService.getUser(user.getId());
    	model.addAttribute("user", entity);
		return "user/userInfo";
	}
    
    @RequestMapping("/updateUser")
    @ResponseBody
	public void updateUser(HttpServletRequest request, Model model,User user) {
    	userService.updateUser(user);
	}
    
    @RequestMapping("/deleteUser")
    @ResponseBody
    public void deleteUser(HttpServletRequest request,Model model,User user){    
        userService.deleteUser(user.getId());
    }    
    
    @RequestMapping("/index")
	public String index(HttpServletRequest request, Model model) {
		return "user/index";
	}
    
}
