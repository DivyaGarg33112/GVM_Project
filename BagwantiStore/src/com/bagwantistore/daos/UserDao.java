package com.bagwantistore.daos;

import com.bagwantistore.models.User;

public interface UserDao {
	public User validateUser(String email,String pass);
	public boolean registerUser(User userObj);
	public User getUser(String email);
	public boolean updateUser(User userObj);
	public boolean changePassword(String email,String newPassword);
}
