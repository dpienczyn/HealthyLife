package com.pack.service;

import java.util.List;

import com.pack.model.Comment;

public interface CommentService {

public void saveOrUpdate(Comment comment);
    
    public void delete(int idComment);
     
    public Comment get(int idComment);
	public List<Comment> getAllComment();
}
