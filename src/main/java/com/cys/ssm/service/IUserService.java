package com.cys.ssm.service;

import java.util.List;

import com.cys.ssm.model.User;

public interface IUserService {

	public List<User> getUserList(User user);
	
	public User getUser(int userId);

	public void addUser(User user);

	public void updateUser(User user);
	
	public void deleteUser(int userId);
}
