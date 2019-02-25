package com.pack.dao;

import java.util.List;

import com.pack.model.Category;

public interface CategoryDAO {

	public void addCategory(Category category);
	 
	 public List<Category> getCategories();
	 
	 public Category getCategory(int categoryId);
	 
	 public void deleteCategory(int categoryId);
	 public Category updateCategory (Category category);

}
