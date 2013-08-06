/**
 * 
 */
package com.optimus.smsocean.jpa;

import org.springframework.data.mongodb.core.mapping.Document;

/**
 * @author jitendra
 *
 */
@Document(collection="contact")
public class Contact {
private String fullname;

}
