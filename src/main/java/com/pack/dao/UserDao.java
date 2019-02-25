package com.pack.dao;

import com.pack.model.User;

import java.util.List;
 
 
public interface UserDao {
	 
	public void saveOrUpdate(User user);
    
    public void delete(int id);
     
    public User get(int id);
	public List<User> getAllUser();
	public List<User> getAllUser(int id);
	public boolean checkLogin(String userId, String password);
	
}
