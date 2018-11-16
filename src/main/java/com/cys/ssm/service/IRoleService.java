package com.cys.ssm.service;

import java.util.List;
import java.util.Map;

import com.cys.ssm.model.Role;

public interface IRoleService {

	public List<Role> getList(Role role);
	
	public Role get(int id);

	public void add(Role role);

	public void update(Role role);
	
	public void delete(int id);
	
	public Map<String,Object> getRoleAndUrlControl(Role role);
	
	public void updateRoleAndRoleUrl(Role role);
}
