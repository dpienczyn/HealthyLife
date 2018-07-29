package com.pack.dao;

import java.util.List;

import com.pack.model.UserProfile;
 
 
public interface UserProfileDao {
	 
    List<UserProfile> findAll();
     
    UserProfile findByType(String type);
     
    UserProfile findById(int id);
}