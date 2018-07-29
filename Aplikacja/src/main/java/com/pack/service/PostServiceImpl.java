package com.pack.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pack.dao.PostDAO;
import com.pack.model.Post;

@Service
@Transactional
public class PostServiceImpl implements PostService{

	@Autowired
	private PostDAO postDao;
	
	@Override
	public void saveOrUpdate(Post post) {
		postDao.saveOrUpdate(post);
		
	}

	@Override
	public void delete(int postid) {
		postDao.delete(postid);
		
	}

	@Override
	public Post get(int postid) {
		return postDao.get(postid);
	}

	@Transactional
	public List<Post> getAllPost() {
		return postDao.getAllPost();
	}

	@Override
	public List<Post> getAllPosts(int postid) {
		return postDao.getAllPosts(postid);
	}
}
