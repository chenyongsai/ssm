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
        
    public User getUserById(int userId) {    
        return userDao.queryByPrimaryKey(userId);    
    }    
    
    public void insertUser(User user) {    
        userDao.insertUser(user);    
    }    
    
    public void addUser(User user) {    
        userDao.insertUser(user);    
    }    
    
    public List<User> getAllUser() {    
        return userDao.getAllUser();    
    }

	public void updateById(User user) {
		userDao.updateByPrimaryKey(user);    
	}    

}
