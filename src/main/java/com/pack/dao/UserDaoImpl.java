package com.pack.dao;

import java.util.List;
 
import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pack.model.User;
 
 
 
@Repository
public class UserDaoImpl implements UserDao{

	@Autowired
    private SessionFactory sessionFactory;

	@Override
	public void saveOrUpdate(User user) {
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		
	}

	@Override
	public void delete(int id) {
		User user = (User)sessionFactory.getCurrentSession().load(
				User.class, id);
		if(null!=user){
			this.sessionFactory.getCurrentSession().delete(user);
		}
	}

	@Override
	public User get(int id) {
		return (User) sessionFactory.getCurrentSession().get(
				User.class, id);
	}

	@SuppressWarnings("unchecked")
	public List<User> getAllUser() {
		return sessionFactory.getCurrentSession().createQuery("from User").list();
	}

	@Override
	public List<User> getAllUser(int id) {
		return sessionFactory.getCurrentSession().createQuery("from User u where u.id=:id").setParameter("id",id).list();
	}

	@SuppressWarnings("unchecked")
	public boolean checkLogin(String userId, String password) {
		boolean userFound = false;
		List<User> list = sessionFactory.getCurrentSession().createQuery("from User as u where u.userId=:userId and u.password=:password").setParameter("userId", userId).setParameter("password", password).list();
		if ((list != null) && (list.size() > 0)) {
			userFound= true;
		}
		return userFound;
	}

}