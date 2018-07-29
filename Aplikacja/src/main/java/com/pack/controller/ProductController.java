package com.pack.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.pack.model.Comment;
import com.pack.model.Post;
import com.pack.model.Product;
import com.pack.model.User;
import com.pack.service.CategoryService;
import com.pack.service.ProductService;
import com.pack.service.UserService;

@RequestMapping(value = "/product")
@Controller
@ComponentScan("com.pack.service")
public class ProductController {
	
	private static final Logger logger = Logger
            .getLogger(ProductController.class);
 
    public ProductController() {
        System.out.println("ProductController()");
    }

	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService productCategoryService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = " ")
    public ModelAndView listProduct(ModelAndView model) throws IOException {
        List<Product> listProduct = productService.getAllProducts();
        model.addObject("listProduct", listProduct);
        model.setViewName("product");
        return model;
    }
	/*@RequestMapping(value = "/{userid}", method = RequestMethod.GET)
    public String findproduct(@PathVariable int id, ModelMap model){
		User user = new User();
		model.addAttribute("product", productService.findByUser(id));
        return "product";
    }*/
	
	/*@RequestMapping(value = "/{userid}/product", method = RequestMethod.GET)
    public ModelAndView listUserId(@PathVariable("userid") int id) throws IOException {
		User user = new User();
        List<Product> listProduct = productService.findByUser(user);
        ModelAndView model = new ModelAndView("listUserId");
        model.addObject("listProduct", listProduct);
        return model;
    }*/
	
	@RequestMapping(value = "/newProduct", method = RequestMethod.GET)
	 public ModelAndView addPublication(@ModelAttribute("product")  Product product,
	   BindingResult result) {
	  Map<String, Object> model = new HashMap<String, Object>();
	  model.put("newProduct",  productService.getAllProducts());
	  model.put("categories",  productCategoryService.getCategories());
	  return new ModelAndView("newProduct", model);
	 }
	
	@RequestMapping(value = "/saveProduct", method = RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute Product product) {
	    productService.saveOrUpdate(product);
	    return new ModelAndView("redirect:/product");
	}
	
	@RequestMapping(value = "/{productId}", method = RequestMethod.GET)
	public ModelAndView deleteProduct(@PathVariable int productId, ModelAndView model, Product product) {
	    productService.delete(productId);
	    return new ModelAndView("redirect:/product");
	}
	
	@RequestMapping(value = "/editProduct", method = RequestMethod.GET)
	public ModelAndView editContact(HttpServletRequest request) {
	    int productId = Integer.parseInt(request.getParameter("productId"));
	    Product product = productService.get(productId);
	    ModelAndView model = new ModelAndView("newProduct");
	    model.addObject("product", product);
	 
	    return model;
	}
}
