/**
 * 
 */
package com.optimus.smsocean.jpa;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.config.AbstractMongoConfiguration;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

import com.mongodb.Mongo;
import com.mongodb.MongoClient;

/**
 * @author jitendra
 *
 */
@Configuration
@EnableMongoRepositories
public class ApplicationDbConfiguration extends AbstractMongoConfiguration {

	@Override
	protected String getDatabaseName() {
		return "smsocean";
	}

	@Override
	@Bean
	public Mongo mongo() throws Exception {
		return  new MongoClient("127.0.0.1");
	}

}
