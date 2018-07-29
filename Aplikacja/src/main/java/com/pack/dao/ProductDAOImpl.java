package com.pack.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pack.model.Product;
import com.pack.model.User;


@Repository
public class ProductDAOImpl implements ProductDAO{
	
	@Autowired
    private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	public List<Product> getAllProducts() {
		return sessionFactory.getCurrentSession().createQuery("from Product").list();
	}


	@Override
	public void saveOrUpdate(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		
	}


	@Override
	public void delete(int productId) {
		Product product = (Product)sessionFactory.getCurrentSession().load(
				Product.class, productId);
		if(null!=product){
			this.sessionFactory.getCurrentSession().delete(product);
		}
	}


	@Override
	public Product get(int productId) {
		return (Product) sessionFactory.getCurrentSession().get(
				Product.class, productId);
	}


	/*@Override
	public List<Product> findByUser(int id) {
	return sessionFactory.getCurrentSession().createQuery("from Product p where p.userid=:id").list();
	}*/
	
}
