package com.cys.ssm.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cys.ssm.dao.IUserDao;
import com.cys.ssm.model.User;
import com.cys.ssm.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
	
	@Resource    
    private IUserDao userDao;    
        
	public List<User> getUserList(User user) {
		return userDao.queryUserList(user);
	}

	public User getUser(int userId) {
		return userDao.queryById(userId);
	}

	public void updateUser(User user) {
		userDao.updateById(user);
	}

	public void deleteUser(int userId) {
		userDao.deleteById(userId);
	}

	public void addUser(User user) {
		userDao.insertUser(user);
	}    

}
