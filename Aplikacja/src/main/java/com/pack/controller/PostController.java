package com.pack.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pack.model.Comment;
import com.pack.model.Post;
import com.pack.service.CommentService;
import com.pack.service.PostService;
import com.pack.service.UserService;

@RequestMapping(value="/posts")
@Controller
public class PostController{
	
	private static final Logger logger = Logger
            .getLogger(PostController.class);

	@Autowired
	private PostService postService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CommentService commentService;
	
	@RequestMapping(value = " ")
    public ModelAndView listPost(ModelAndView model) {
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
	 public ModelAndView addPost(@ModelAttribute("post")  Post post) {
	  Map<String, Object> model = new HashMap<String, Object>();
	  model.put("newPost",  new Post());
	  return new ModelAndView("newPost", model);
	 }
	
	@RequestMapping(value = "/savePost", method = RequestMethod.POST)
	public ModelAndView savePost(@ModelAttribute("post") Post post){
		postService.saveOrUpdate(post);
	    return new ModelAndView("redirect:/posts");
	
	}
}