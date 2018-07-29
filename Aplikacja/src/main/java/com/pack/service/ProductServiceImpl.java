package com.pack.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pack.dao.ProductDAO;
import com.pack.model.Product;
import com.pack.model.User;

@Service
@Transactional
public class ProductServiceImpl implements ProductService{
	

	@Autowired
	private ProductDAO productDAO;
	
	@Transactional
	public List<Product> getAllProducts() {
		return productDAO.getAllProducts();
	}

	@Override
	public void saveOrUpdate(Product product) {
		productDAO.saveOrUpdate(product);
		
	}

	@Override
	public void delete(int productId) {
		productDAO.delete(productId);
		
	}

	@Override
	public Product get(int productId) {
		return productDAO.get(productId);
	}

	/*@Override
	public List<Product> findByUser(int id) {
		return productDAO.findByUser(id);
	}*/
	

}
