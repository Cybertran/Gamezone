package com.optimus.smsocean.service;

import java.util.List;

import com.optimus.smsocean.jpa.User;

public interface UserService {
	public User getUserByName(String userName);
	public void saveUser(User user);
	public List<User> getAllUser();
	

}
