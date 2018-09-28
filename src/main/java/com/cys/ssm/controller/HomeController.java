package com.cys.ssm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;  


@Controller    
@RequestMapping("/home") 
public class HomeController {
	
	@RequestMapping("/index")
	public String index(HttpServletRequest request, Model model) {
		return "home/index";
	}
    
}
