package com.pack.dao;

import java.util.List;

import com.pack.model.Product;
import com.pack.model.User;

public interface ProductDAO {

	public void saveOrUpdate(Product product);
    
    public void delete(int productId);
     
    public Product get(int productId);
	public List<Product> getAllProducts();
	/*public List<Product> findByUser(int id); */
	
}

