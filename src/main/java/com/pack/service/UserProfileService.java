package com.pack.service;

import java.util.List;

import com.pack.model.UserProfile;
 
 
public interface UserProfileService {
	 
    UserProfile findById(int id);
 
    UserProfile findByType(String type);
     
    List<UserProfile> findAll();
     
}