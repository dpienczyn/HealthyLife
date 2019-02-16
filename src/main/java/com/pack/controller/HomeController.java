package com.pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HomeController {

	@RequestMapping(value = { "/kontakt"})
    public String HomePage(ModelAndView model) {
        return "kontakt";
    }
	
	@RequestMapping(value = { "/home2"})
    public String HomePage2(ModelAndView model) {
        return "home2";
    }
	
}
