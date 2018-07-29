package com.pack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.pack.model.Calorie;

@Controller
public class CalorieController {

	public CalorieController() {
        System.out.println("CalorieController()");
    }
	
	@RequestMapping(value = "/calorie", method = RequestMethod.GET)
    public ModelAndView obliczKalorie(ModelAndView model) {
        Calorie calorie = new Calorie();
        model.addObject("calorie", calorie);
        model.setViewName("calorie");
        return model;
    }
	
	@RequestMapping(value="calorie/resultCalorie",  method = RequestMethod.POST)
    public ModelAndView calculateCalori(@ModelAttribute("resultCalorie") Calorie c ){
				double b, w, t, calo;
        ModelAndView mv = new ModelAndView();
        System.out.println("Bialko: "+c.getBialko()+"Weglowodany: "+c.getWeglowodany()+"T³uszcz: "+c.getTluszcz());
        System.out.println("Bialko: "+c.resultBialko()+"Weglowodany: "+c.resultWeg()+"T³uszcz: "+c.resultTluszcz());
        b = c.resultBialko()*17;
        w = c.resultWeg()*17;
        t = c.resultTluszcz()*37;
        System.out.println("Bialko: "+ b +"Weglowodany: "+ w +"T³uszcz: "+ t);
        calo = (b+w+t)/4.184;
        mv.addObject("calo",calo);
        mv.setViewName("resultCalorie");
        return mv;
    }
}
