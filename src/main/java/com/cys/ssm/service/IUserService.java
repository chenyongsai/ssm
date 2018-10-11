package com.cys.ssm.service;

import java.util.List;

import com.cys.ssm.model.User;

public interface IUserService {

	public List<User> getList(User user);
	
	public User get(int userId);

	public void add(User user);

	public void update(User user);
	
	public void delete(int userId);
}
