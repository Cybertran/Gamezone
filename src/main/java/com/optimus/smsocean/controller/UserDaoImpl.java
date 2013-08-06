package com.optimus.smsocean.controller;

import static org.springframework.data.mongodb.core.query.Criteria.where;
import static org.springframework.data.mongodb.core.query.Query.query;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.core.MongoTemplate;

import com.optimus.smsocean.dao.UserDao;
import com.optimus.smsocean.jpa.User;

@Configuration
public class UserDaoImpl implements UserDao {
	@Autowired
    private MongoTemplate mongoTemplate;
	@Override
	
	public void save(User user) {
		mongoTemplate.save(user);
		
	}
	@Override
	public List<User> getAllUser() {
		return mongoTemplate.findAll(User.class);
	}
	@Override
	public User getUserByName(String username) {
		return mongoTemplate.findOne(query(where("username").is(username)), User.class);
	}

}
