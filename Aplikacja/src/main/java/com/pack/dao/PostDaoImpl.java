package com.pack.dao;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.pack.model.Post;

@Repository
public class PostDaoImpl implements PostDAO{
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public void saveOrUpdate(Post post) {
		sessionFactory.getCurrentSession().saveOrUpdate(post);
		
	}

	@Override
	public void delete(int postid) {
		Post post = (Post)sessionFactory.getCurrentSession().load(
				Post.class, postid);
		if(null!=post){
			this.sessionFactory.getCurrentSession().delete(post);
		}
		
	}

	@Override
	public Post get(int postid) {
		return (Post) sessionFactory.getCurrentSession().get(
				Post.class, postid);
	}

	@SuppressWarnings("unchecked")
	public List<Post> getAllPost() {
		return sessionFactory.getCurrentSession().createQuery("from Post").list();
	}
	@Override
	public List<Post> getAllPosts(int postid) {
		return sessionFactory.getCurrentSession().createQuery("from Post p where p.postid=:postid").setParameter("postid",postid).list();
	}

}
