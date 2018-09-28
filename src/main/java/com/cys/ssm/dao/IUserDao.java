package com.cys.ssm.dao;

import java.util.List;
import java.util.Map;

import com.cys.ssm.model.User;


public interface IUserDao {

	public User queryById(Integer id);    
    
    public List<User> queryUserList(User user);    
        
    public void insertUser(User user);    
        
    public void insertUserByBatch(List<User> list);    
        
    public void deleteById(Integer id);    
        
    public void delteUserByBatch(Map<String,Object> params);    
        
    public void updateById(User user);
    
//    public List<User> getAllUser();    
}
