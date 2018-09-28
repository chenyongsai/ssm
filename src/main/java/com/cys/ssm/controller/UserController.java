package com.cys.ssm.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cys.ssm.model.User;
import com.cys.ssm.service.IUserService;  


@Controller    
@RequestMapping("/user") 
public class UserController {
	
	@Resource    
    private IUserService userService;    
        
	@RequestMapping("/toAdd")
	public String toAdd(HttpServletRequest request, Model model) {
		return "user/toAdd";
	}
	
    @RequestMapping("/userList")    
    public String userList(HttpServletRequest request,Model model,User user){    
        List<User> uList = userService.getUserList(user);    
        model.addAttribute("uList", uList);    
        return "user/userList";    
    }    
        
    @RequestMapping("/addUser")    
    public String addUser(HttpServletRequest request,Model model,User user){    
        userService.addUser(user);    
        return "redirect:/user/userList";    
    }    
    
    @RequestMapping("/userInfo")
	public String userInfo(HttpServletRequest request, Model model,User user) {
    	User entity = userService.getUser(user.getId());
    	model.addAttribute("user", entity);
		return "user/userinfo";
	}
    
    @RequestMapping("/updateUser")
	public String updateUser(HttpServletRequest request, Model model,User user) {
    	userService.updateUser(user);
    	return "redirect:/user/userList";    
	}
    
    @RequestMapping("/deleteUser")    
    public String deleteUser(HttpServletRequest request,Model model,User user){    
        userService.deleteUser(user.getId());    
        return "redirect:/user/userList";    
    }    
    
    
    
}
