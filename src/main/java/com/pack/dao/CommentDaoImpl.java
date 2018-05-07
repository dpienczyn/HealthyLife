package com.pack.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pack.model.Comment;
import com.pack.model.Post;

@Repository
public class CommentDaoImpl implements CommentDAO{

	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public void saveOrUpdate(Comment comment) {
		sessionFactory.getCurrentSession().saveOrUpdate(comment);
		
	}

	@Override
	public void delete(int idComment) {
		Comment comment = (Comment)sessionFactory.getCurrentSession().load(
				Comment.class, idComment);
		if(null!=comment){
			this.sessionFactory.getCurrentSession().delete(comment);
		}
		
	}

	@Override
	public Comment get(int idComment) {
		return (Comment) sessionFactory.getCurrentSession().get(
				Comment.class, idComment);
	}

	@SuppressWarnings("unchecked")
	public List<Comment> getAllComment() {
		return sessionFactory.getCurrentSession().createQuery("from Comment").list();
	}
}
