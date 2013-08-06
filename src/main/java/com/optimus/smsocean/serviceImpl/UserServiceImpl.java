/**
 * 
 */
package com.optimus.smsocean.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.optimus.smsocean.dao.UserDao;
import com.optimus.smsocean.jpa.User;
import com.optimus.smsocean.service.UserService;

/**
 * @author jitendra
 *
 */
@Component
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	@Override
	public User getUserByName(String userName) {
		return userDao.getUserByName(userName);
	}
	@Override
	public void saveUser(User user) {
		userDao.save(user);
		
	}
	@Override
	public List<User> getAllUser() {
		
		return userDao.getAllUser();
	}

}
