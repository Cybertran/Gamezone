package com.optimus.smsocean.dao;

import java.util.List;

import com.optimus.smsocean.jpa.User;

public interface UserDao {
	public void save(User user);
	public List<User> getAllUser();
	public User getUserByName(String username);

}
