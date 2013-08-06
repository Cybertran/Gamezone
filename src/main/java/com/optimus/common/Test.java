package com.optimus.common;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;

import com.optimus.smsocean.jpa.User;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		/*@SuppressWarnings("resource")
		ApplicationContext ctx = new ClassPathXmlApplicationContext("classpath:servlet-context.xml");
		MongoOperations mongoOperation = (MongoOperations) ctx.getBean("mongoTemplate");


		User user = new User();
		user.setUsername("jitendra");
		user.setPassword("hungry");
		 
		// save
		mongoOperation.save(user);
	 
		// now user object got the created id.
		System.out.println("1. user : " + user);
	 
		// query to search user
		Query searchUserQuery = new Query(Criteria.where("username").is("jitendra"));*/
	 
	   

	}

}
