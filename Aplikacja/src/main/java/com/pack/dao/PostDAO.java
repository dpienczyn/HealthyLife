package com.pack.dao;

import java.util.List;
import com.pack.model.Post;

public interface PostDAO {

	public void saveOrUpdate(Post post);
    
    public void delete(int postid);
     
    public Post get(int postid);
	public List<Post> getAllPost();
	public List<Post> getAllPosts(int postid);
}
