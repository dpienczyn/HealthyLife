package com.pack.service;

import java.util.List;

import com.pack.model.User;
 
 
public interface UserService {
    
	public void saveOrUpdate(User user);
	public void delete(int id);
    
    public User get(int id);
	public List<User> getAllUser();
	public List<User> getAllUser(int id);
	public boolean checkLogin(String userId, String password);
}