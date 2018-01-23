package com.niit.dao;

import java.util.List;

import com.niit.model.Category;



public interface CategoryDao {

	public List<Category> list();

	public Category get(String id);

	public void saveOrUpdate(Category category);

	public void delete(String id);
}
