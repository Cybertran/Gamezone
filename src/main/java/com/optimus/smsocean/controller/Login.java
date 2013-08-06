/**
 * 
 */
package com.optimus.smsocean.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.optimus.smsocean.jpa.User;
import com.optimus.smsocean.service.UserService;

/**
 * @author jitendra
 *
 */
@Controller
public class Login {
	
	@Autowired
	private UserService userService;
	
	
	@RequestMapping(value="/service/loginAuth")
	public String getUserbyUserName(Model model,HttpServletRequest req) {
		String username=req.getParameter("username");
		User user=null;
		if(username!=null) {
		 user=userService.getUserByName(username);
		}
		if(user!=null) {
			model.addAttribute("user", user);
			return "home";
		}else {
			
			return "index";
		}
		
		//model.addAttribute("userList", userService.getAllUser());
		
	}
	
	@RequestMapping(value="/service/save")
	public String saveUser(@ModelAttribute("user")User user) {
		
		userService.saveUser(user);
		return "success";
	}

}
