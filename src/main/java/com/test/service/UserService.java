package com.test.service;

import java.util.List;

import com.test.model.User;

public interface UserService {
	void insert(User user);

	void edit(User user);

	void delete(int id);

	User get(String username);
	
	User get(int id);
	
	User login(String username, String password);
	
	boolean register( String username ,String password);

	List<User> getAll();

	List<User> search(String keyword);	
	
	boolean checkExistUsername(String username);
	
}