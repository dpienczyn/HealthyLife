package com.pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {

	@RequestMapping(value = { "/ghj"})
    public String HomePage(ModelAndView model) {
        return "home";
    }
	
	@RequestMapping(value = { "/home2"})
    public String HomePage2(ModelAndView model) {
        return "home2";
    }
	
}
