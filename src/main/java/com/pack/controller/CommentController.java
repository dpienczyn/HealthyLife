package com.pack.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pack.model.Comment;
import com.pack.model.Post;
import com.pack.service.CommentService;
import com.pack.service.PostService;


@RequestMapping(value="/posts/{postid}/comments")
@Controller
public class CommentController {
	
	private static final Logger logger = Logger
            .getLogger(CommentController.class);


	@Autowired
	private CommentService commentService;
	
	@Autowired
    private PostService postService;
	
	@RequestMapping(value = "")
    public ModelAndView Comment(@PathVariable int postid, ModelAndView model, Comment comment) {
		List<Post> list = postService.getAllPosts(postid);
        List<Comment> comments = commentService.getAllComment();
        model.addObject("comments", comments);
        model.addObject("list", list);
        model.setViewName("view");
        return model;
	
	}
	
	@RequestMapping(value = "/newComment", method = RequestMethod.GET)
    public ModelAndView newComment(@PathVariable int postid, @ModelAttribute("comment") Comment comment,
    		   BindingResult result){
		Post post = postService.get(postid);
		/*List<Post> lista = postService.getAllPosts(postid);
		List<Comment> comments = commentService.getAllComment();*/
		Map<String, Object> model = new HashMap<String, Object>();
		comment.setPost(post);
		post.addComment(comment);
        model.put("comment", new Comment());
       /*model.put("lista", lista);*/
        return new ModelAndView("view", model);

    }
	
	@RequestMapping(value = "/saveComment", method = RequestMethod.POST)
	public ModelAndView saveComment(@PathVariable int postid, @ModelAttribute("comment") Comment comment) {
		List<Post> list = postService.getAllPosts(postid);
		Post post = postService.get(postid);
		comment.setPost(post);
		post.addComment(comment);
		commentService.saveOrUpdate(comment);
	    return new ModelAndView("redirect:/posts/{postid}/comments");
	}
}