package com.cys.ssm.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.cys.ssm.dao.IRoleDao;
import com.cys.ssm.dao.IRoleUrlControlDao;
import com.cys.ssm.dao.IUrlControlDao;
import com.cys.ssm.model.Role;
import com.cys.ssm.model.RoleUrlControl;
import com.cys.ssm.model.UrlControl;
import com.cys.ssm.service.IRoleService;

@Service("roleService")
public class RoleServiceImpl implements IRoleService {
	
	@Resource    
    private IRoleDao roleDao;
	@Resource    
	private IRoleUrlControlDao roleUrlControlDao;
	@Resource    
	private IUrlControlDao urlControlDao;

	public List<Role> getList(Role role) {
		return roleDao.queryList(role);
	}

	public Role get(int id) {
		return roleDao.queryById(id);
	}

	public void add(Role role) {
		roleDao.insert(role);
	}

	public void update(Role role) {
		roleDao.updateById(role);
	}

	public void delete(int id) {
		roleDao.deleteById(id);
	}

	public Map<String, Object> getRoleAndUrlControl(Role role) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		Role roleObj = roleDao.queryById(role.getId());
		map.put("role", roleObj);
		
		List<UrlControl> urlList = urlControlDao.queryList(null);
		
		RoleUrlControl rucObj = roleUrlControlDao.queryById(role.getId());
		
		if(rucObj!=null && !StringUtils.isEmpty(rucObj.getUrlControls())) {
			
			String urlControls = rucObj.getUrlControls();
			
			List<String> idList = Arrays.asList(urlControls.split(","));
			
			for(UrlControl url : urlList) {
				if(idList.contains(url.getId().toString())) {
					url.setChooseFlag(true);
				}else {
					url.setChooseFlag(false);
				}
			}
		}
		
		map.put("urlControl", urlList);
		
		return map;
	}

	public void updateRoleAndRoleUrl(Role role) {
		roleDao.updateById(role);
		RoleUrlControl ruc = new RoleUrlControl();
		ruc.setRoleId(role.getId());
		ruc.setUrlControls(role.getUrlIds());
		
		RoleUrlControl entry = roleUrlControlDao.queryById(role.getId());
		if(entry==null || StringUtils.isEmpty(entry.getRoleId())) {
			roleUrlControlDao.insert(ruc);
		}else {
			roleUrlControlDao.updateById(ruc);
		}
	}    

}
