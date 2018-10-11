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
        
	public List<User> getList(User user) {
		return userDao.queryList(user);
	}

	public User get(int userId) {
		return userDao.queryById(userId);
	}

	public void update(User user) {
		userDao.updateById(user);
	}

	public void delete(int userId) {
		userDao.deleteById(userId);
	}

	public void add(User user) {
		userDao.insert(user);
	}    

}
