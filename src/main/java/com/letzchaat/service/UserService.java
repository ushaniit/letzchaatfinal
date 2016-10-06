package com.letzchaat.service;

import java.util.List;

import com.letzchaat.model.UserRegister;

public interface UserService {
	void addUser(UserRegister user);
	UserRegister getUserByEmailId(String emailId);
	List<UserRegister> getAllUsers();
	int getUserId(String emailId);
	UserRegister getUserById(int userId);
	public void updateUser(UserRegister u);
}
