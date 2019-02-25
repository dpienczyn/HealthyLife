package com.pack.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pack.model.User;
import com.pack.service.UserService;

@Controller
public class UserController {

	private static final Logger logger = Logger
            .getLogger(UserController.class);

	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	 public ModelAndView addUser(@ModelAttribute("user")  User user,
	   BindingResult result) {
	  Map<String, Object> model = new HashMap<String, Object>();
	  model.put("register",  new User());
	  return new ModelAndView("register", model);
	 }
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	 public String login(Map model) {
		User user = new User();
		model.put("login", user);
		return "login";
	 }
	
	@RequestMapping(value = "/loginsuccess", method = RequestMethod.POST)
	 public String loginsuccess(@Valid User user, BindingResult result, Map model) {
		if (result.hasErrors()) {
			return "login";
		}
		//ModelAndView mv = new ModelAndView();
	 /* String userName = "userId";
	  String password = "password";
	  //user = (User) model.get("register");
	  if(!user.getUserId().equals(userName)||!user.getPassword().equals(password)){
		  return "user";
	  }*/
	  boolean userExists = userService.checkLogin(user.getUserId(),
              user.getPassword());
		if(userExists){
			model.put("user", user);
			return "welcome";
		}else{
			return "login";
		}
	 }
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(Model model ) {
		 model.addAttribute("title", "Logout");
	       return "register";
    }
	
	@RequestMapping(value = "/saveUser", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute("user") User user) {
	    userService.saveOrUpdate(user);
	    return new ModelAndView("redirect:/");
	}
}
