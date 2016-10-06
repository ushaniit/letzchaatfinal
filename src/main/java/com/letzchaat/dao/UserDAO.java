package com.letzchaat.dao;

import java.util.List;

import com.letzchaat.model.Forum;
import com.letzchaat.model.UserRegister;

public interface UserDAO {
void addUser(UserRegister user);
UserRegister getUserByEmailId(String emailId);
UserRegister getUserById(int userId);
int getUserId(String emailId);
List<UserRegister> getAllUsers();
void updateUser(UserRegister u);



}
