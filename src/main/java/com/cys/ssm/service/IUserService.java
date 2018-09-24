package com.cys.ssm.service;

import java.util.List;

import com.cys.ssm.model.User;

public interface IUserService {

	public User getUserById(int userId);

	public void insertUser(User user);

	public void addUser(User user);

	public List<User> getAllUser();
	
	public void updateById(User user);
}
