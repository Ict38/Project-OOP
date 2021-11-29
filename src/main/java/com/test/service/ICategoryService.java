package com.test.service;

import java.util.List;


import com.test.model.Category;

public interface ICategoryService {
	void insert(Category category);

	void edit(Category category);

	void delete(int id);

	Category get(int id);
	
	Category get(String name);

	List<Category> getAll();

	List<Category> search(String username);
}
