package com.pack.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileUpload;
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.acls.model.NotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindException;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pack.model.Comment;
import com.pack.model.Post;
import com.pack.model.Product;
import com.pack.model.User;
import com.pack.service.CommentService;
import com.pack.service.PostService;
import com.pack.service.UserService;

@RequestMapping(value="/posts")
@Controller
public class PostController {
	
	private static final Logger logger = Logger
            .getLogger(PostController.class);

	@Autowired
	private PostService postService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CommentService commentService;
	
	@RequestMapping(value = " ")
    public ModelAndView listPost(ModelAndView model) throws IOException {
        List<Post> listPost = postService.getAllPost();
        model.addObject("listPost", listPost);
        model.setViewName("post");
        return model;
    }
	
	@RequestMapping(value = "/{postid}", method = RequestMethod.GET)
    public ModelAndView findid(@PathVariable int postid, ModelAndView model, Comment comment){
		Post list = postService.get(postid);
		List<Post> lista = postService.getAllPosts(postid);
		List<Comment> comments = list.getComments();
        model.addObject("lista", lista);
        model.addObject("comments", comments);
        model.setViewName("view");
        return model;
    }
	
	
	@RequestMapping(value = "/newPost", method = RequestMethod.GET)
	 public ModelAndView addPost(@ModelAttribute("post")  Post post,
	   BindingResult result) {
	  Map<String, Object> model = new HashMap<String, Object>();
	  model.put("newPost",  new Post());
	  return new ModelAndView("newPost", model);
	 }
	
	@RequestMapping(value = "/savePost", method = RequestMethod.POST)
	public ModelAndView savePost(@ModelAttribute("post") Post post) {
	    postService.saveOrUpdate(post);
	    return new ModelAndView("redirect:/");
	}
	@RequestMapping(value = "/deletePost/{postid}")
	public ModelAndView deletePost(@PathVariable("postid") int postid) {
	    postService.delete(postid);
	    return new ModelAndView("redirect:/posts");
	}
}
