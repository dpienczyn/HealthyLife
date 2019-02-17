package com.pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pack.model.BMI;

@Controller
public class BmiController {

	@RequestMapping(value = "/bmi", method = RequestMethod.GET)
    public ModelAndView oblicz(ModelAndView model) {
        BMI bmi = new BMI();
        model.addObject("bmi", bmi);
        model.setViewName("bmi");
        return model;
    }
	
	@RequestMapping(value="bmi/resultBmi",  method = RequestMethod.POST)
    public ModelAndView calculateBmi(@ModelAttribute("resultBmi") BMI vbmi ){
		double result;
        ModelAndView mv = new ModelAndView();
        System.out.println("wzrost:" + vbmi.getHeight() + " waga: " + vbmi.getWeight());
        double wzrost = vbmi.getHeight()/100;
        result = vbmi.getWeight() / (wzrost*wzrost);
        //result /= 100;
        //result *=100;
        
        
        if(result<=18){
        	mv.addObject("r", "Niedowaga");
        }else if(result>18&&result<25){
        	mv.addObject("r", "Waga prawid�owa");
        }else if(result>25&&result<30){
        	mv.addObject("r", "Nadwaga");
        }
        mv.addObject("result",result);
        mv.addObject("height",vbmi.getWeight());
        mv.addObject("weight",vbmi.getHeight());
        mv.setViewName("resultBmi");
        return mv;
    }
}
