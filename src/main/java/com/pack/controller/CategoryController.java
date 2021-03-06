package com.pack.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pack.model.Category;
import com.pack.model.Product;
import com.pack.service.CategoryService;
@RequestMapping(value="/categories")
@Controller
@ComponentScan("com.pack.service")
public class CategoryController {
	
	private static final Logger logger = Logger
            .getLogger(CategoryController.class);
 
    public CategoryController() {
        System.out.println("CategoryController()");
    }
 
 @Autowired
 private CategoryService categoryService;
 
 @RequestMapping(value = " ")
 public ModelAndView listCategory(ModelAndView model) throws IOException {
     List<Category> listCategory = categoryService.getCategories();
     model.addObject("listCategory", listCategory);
     model.setViewName("categories");
     return model;
 }
 
 @RequestMapping(value = "/addCategory", method = RequestMethod.GET)
 public ModelAndView addCategory(@ModelAttribute("command")  Category category,
   BindingResult result) {
  Map<String, Object> model = new HashMap<String, Object>();
  model.put("newCategory",  categoryService.getCategories());
  return new ModelAndView("newCategory", model);
 }
 
 @RequestMapping(value = "/saveCategory", method = RequestMethod.POST)
 public ModelAndView saveEmployee(@ModelAttribute("command") Category category, 
   BindingResult result) {
  categoryService.addCategory(category);
  categoryService.updateCategory(category);
  return new ModelAndView("redirect:/categories");
 }
 
 @RequestMapping(value = "/deleteCategory/{categoryId}")
 public ModelAndView deleteCategory(@PathVariable("categoryId") int categoryId) {
  categoryService.deleteCategory(categoryId);
  return new ModelAndView("redirect:/categories");
 }
 
 @RequestMapping(value = "/editCategory" , method = RequestMethod.GET)
 public ModelAndView editCategory(HttpServletRequest request) {
	 int categoryId = Integer.parseInt(request.getParameter("categoryId"));
     Category category = categoryService.getCategory(categoryId);
     ModelAndView model = new ModelAndView("editCategory");
     model.addObject("category", category);

     return model;
 }
}
