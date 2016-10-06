package com.letzchaat.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.letzchaat.model.Blog;
import com.letzchaat.model.Forum;

@Repository
public class BlogDAOImpl implements BlogDAO {
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public void addBlog(Blog b) {
		Session session=this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(b);
		System.out.println("forum created successfully="+b);
	}

	public List<Blog> getAllBlogs() {
		Session session=this.sessionFactory.getCurrentSession();
		 Query query = session.createQuery("from Blog");
	        List<Blog> blogList = (List<Blog>)query.list();
	        for(Blog b:blogList) 
	        	System.out.println(b.getBlogid());
	        return blogList;
		}
	
	public void removeBlog(int blogId) {
		Session session=this.sessionFactory.getCurrentSession();
		Blog b=(Blog)session.load(Blog.class,new Integer(blogId));
		session.delete(b);
        System.out.println("data deleted successfully="+b);		
	}
	public void updateBlog(Blog b) {
		Session session=this.sessionFactory.getCurrentSession();
        session.update(b);
        System.out.println("data updated successfully="+b);

		
	}
	public Blog getBlogById(int blogId) {
		Session session=this.sessionFactory.getCurrentSession();
		Blog b=(Blog)session.get(Blog.class,new Integer(blogId));
		System.out.println("data of product by id="+b);
		return b;
	
	}

}
