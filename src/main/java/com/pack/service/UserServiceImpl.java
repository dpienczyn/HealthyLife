package com.pack.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pack.dao.UserDao;
import com.pack.model.User;
 
 
@Service
@Transactional
public class UserServiceImpl implements UserService{

	
	@Autowired 
	private UserDao userDao;
	
	@Override
	public void delete(int id) {
		userDao.delete(id);
		
	}

	@Override
	public User get(int id) {
		return userDao.get(id);
	}

	@Transactional
	public List<User> getAllUser() {
		return userDao.getAllUser();
	}

	@Override
	public List<User> getAllUser(int id) {
		return userDao.getAllUser(id);
	}

	@Override
	public void saveOrUpdate(User user) {
		userDao.saveOrUpdate(user);
		
	}

	@Override
	public boolean checkLogin(String userId, String password) {
		return userDao.checkLogin(userId, password);
	}

}
