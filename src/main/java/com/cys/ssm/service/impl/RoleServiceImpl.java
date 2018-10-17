package com.cys.ssm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cys.ssm.dao.IRoleDao;
import com.cys.ssm.model.Role;
import com.cys.ssm.service.IRoleService;

@Service("roleService")
public class RoleServiceImpl implements IRoleService {
	
	@Resource    
    private IRoleDao roleDao;

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

}
