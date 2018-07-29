package com.pack.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.pack.model.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO{

	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public void addCategory(Category category) {
		sessionFactory.getCurrentSession().saveOrUpdate(category);
		
	}

	@SuppressWarnings("unchecked")
	public List<Category> getCategories() {
		return sessionFactory.getCurrentSession().createQuery("from Category").list();
	}

	@Override
	public Category getCategory(int categoryId) {
		return (Category) sessionFactory.getCurrentSession().get(
				Category.class, categoryId);
	}

	@Override
	public void deleteCategory(int categoryId) {
		Category category = (Category)sessionFactory.getCurrentSession().load(
				Category.class, categoryId);
		if(null!=category){
			this.sessionFactory.getCurrentSession().delete(category);
		}
	}
}
