package com.cys.ssm.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cys.ssm.model.Role;
import com.cys.ssm.model.UrlControl;
import com.cys.ssm.service.IRoleService;
import com.cys.ssm.service.IUrlControlService;  


@Controller    
@RequestMapping("/admin") 
public class AdminController {
	
	@Resource    
    private IUrlControlService urlControlService;    
	@Resource    
	private IRoleService roleService;    
        
    @RequestMapping("/urlControlList")    
    public String urlControlList(HttpServletRequest request,Model model, UrlControl urlControl){    
        List<UrlControl> urlControlList = urlControlService.getList(urlControl);    
        for(UrlControl obj : urlControlList) {
        	obj.setMenuStr("1".equals(obj.getMenu())?"系统管理":"2".equals(obj.getMenu())?"用户管理":"");
        	obj.setStatusStr(obj.getStatus()==0?"正常":obj.getStatus()==1?"注销":"");
        }
        model.addAttribute("urlList", urlControlList);    
        return "admin/urlControlList";    
    }    
    
    @RequestMapping("/urlControlAddJsp")
    public String urlControlAddJsp(HttpServletRequest request, Model model) {
    	return "admin/urlControlAdd";
    }
        
    @RequestMapping("/urlControlAdd")
    @ResponseBody
    public void urlControlAdd(HttpServletRequest request,Model model, UrlControl urlControl){    
    	urlControlService.add(urlControl);
    }    
    
    @RequestMapping("/urlControlInfo")
	public String urlControlInfo(HttpServletRequest request, Model model,UrlControl urlControl) {
    	UrlControl entity = urlControlService.get(urlControl.getId());
    	model.addAttribute("urlControl", entity);
		return "admin/urlControlInfo";
	}
    
    @RequestMapping("/urlControlUpdate")
    @ResponseBody
	public void urlControlUpdate(HttpServletRequest request, Model model,UrlControl urlControl) {
    	urlControlService.update(urlControl);
	}
    
    @RequestMapping("/urlControlDelete")
    @ResponseBody
    public void urlControlDelete(HttpServletRequest request,Model model,UrlControl urlControl){    
    	urlControlService.delete(urlControl.getId());
    }    
    
    @RequestMapping("/roleList")    
    public String roleList(HttpServletRequest request,Model model, Role role){    
    	List<Role> roleList = roleService.getList(role);    
    	for(Role obj : roleList) {
    		obj.setStatusStr(obj.getStatus()==0?"正常":obj.getStatus()==1?"注销":"");
    	}
    	model.addAttribute("roleList", roleList);    
    	return "admin/roleList";    
    }    
    
    @RequestMapping("/roleAddJsp")
    public String roleAddJsp(HttpServletRequest request, Model model) {
    	return "admin/roleAdd";
    }
    
    @RequestMapping("/roleAdd")
    @ResponseBody
    public void roleAdd(HttpServletRequest request,Model model, Role role){    
    	roleService.add(role);
    }    
    
    @RequestMapping("/roleInfo")
    public String roleInfo(HttpServletRequest request, Model model,Role role) {
    	Role entity = roleService.get(role.getId());
    	model.addAttribute("role", entity);
    	return "admin/roleInfo";
    }
    
    @RequestMapping("/roleUpdate")
    @ResponseBody
    public void roleUpdate(HttpServletRequest request, Model model,Role role) {
    	roleService.update(role);
    }
    
    @RequestMapping("/roleDelete")
    @ResponseBody
    public void roleDelete(HttpServletRequest request,Model model,Role role){    
    	roleService.delete(role.getId());
    }    
    
}
