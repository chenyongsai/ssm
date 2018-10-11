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
@RequestMapping("/home") 
public class HomeController {
	
	@Resource
	private IUserService userService;   
	
	@RequestMapping("/index")
	public String index(HttpServletRequest request, Model model) {
		return "home/index";
	}

	@RequestMapping("/toLogin")
	public String toLogin(HttpServletRequest request, Model model) {
		return "home/login";
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request, Model model,User user) {
		List<User> userList = userService.getList(user);
		if(userList!=null && userList.size()==1) {
			return "redirect:/user/index";
		}else {
			return "redirect:/home/toLogin";
		}
	}
	
}
