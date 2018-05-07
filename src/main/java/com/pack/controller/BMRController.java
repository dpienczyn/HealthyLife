package com.pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pack.model.BMR;
import com.pack.model.BMR.Sex;
import com.pack.model.Calorie;

@Controller
public class BMRController {

	@RequestMapping(value = "/bmr", method = RequestMethod.GET)
    public ModelAndView obliczBMR(ModelAndView model) {
        BMR bmr = new BMR();
        model.addObject("bmr", bmr);
        model.setViewName("bmr");
        return model;
    }
	
	@RequestMapping(value="bmr/resultBMR",  method = RequestMethod.POST)
    public ModelAndView calculateBMR(@ModelAttribute("resultBMR") BMR b){
        ModelAndView mv = new ModelAndView();
        System.out.println("Waga: "+b.getWaga()+"Wzrost: "+b.getWzrost()+"Wiek: "+b.getWiek());
        if(b.getSex()==Sex.F){
        	b.wagaKobieta();
        	mv.addObject("wagaKobieta",b.wagaKobieta());
        }else {
        	b.wagaMezczyzna();
        	mv.addObject("wagaMezczyzna",b.wagaMezczyzna());
        }
        mv.setViewName("resultBMR");
        return mv;
    }
}
