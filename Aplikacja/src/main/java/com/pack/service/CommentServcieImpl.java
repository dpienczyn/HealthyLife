package com.pack.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pack.dao.CommentDAO;
import com.pack.model.Comment;

@Service
@Transactional
public class CommentServcieImpl implements CommentService{

	@Autowired
	private CommentDAO commentDao;
	
	@Transactional
	public void saveOrUpdate(Comment comment) {
		commentDao.saveOrUpdate(comment);
		
	}

	@Transactional
	public void delete(int idComment) {
		commentDao.delete(idComment);
		
	}

	@Transactional
	public Comment get(int idComment) {
		return commentDao.get(idComment);
	}

	@Transactional
	public List<Comment> getAllComment() {
		return commentDao.getAllComment();
	}

}
