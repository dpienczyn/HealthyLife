package com.pack.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pack.dao.CategoryDAO;
import com.pack.model.Category;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	private CategoryDAO categoryDAO;
	
	@Override
	public void addCategory(Category category) {
		categoryDAO.addCategory(category);
		
	}

	@Transactional
	public List<Category> getCategories() {
		return categoryDAO.getCategories();
	}

	@Override
	public Category getCategory(int categoryId) {
		return categoryDAO.getCategory(categoryId);
	}

	@Override
	public void deleteCategory(int categoryId) {
		categoryDAO.deleteCategory(categoryId);
		
	}

	@Override
	public Category updateCategory(Category category) {
		return categoryDAO.updateCategory(category);
	}

	

}
