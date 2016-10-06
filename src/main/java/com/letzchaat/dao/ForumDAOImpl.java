package com.letzchaat.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.letzchaat.model.Forum;
import com.letzchaat.model.UserRegister;

@Repository
public class ForumDAOImpl implements ForumDAO {
	private SessionFactory sessionFactory;
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public void addForum(Forum forum) {
		Session session=this.sessionFactory.getCurrentSession();
		session.persist(forum);
		System.out.println("forum created successfully="+forum);
	}
	
	public List<Forum> getAllForums() {
		Session session=this.sessionFactory.getCurrentSession();
		 Query query = session.createQuery("from Forum");											
	        List<Forum> forumList = (List<Forum>)query.list();
	        for(Forum f:forumList) 
	        	System.out.println(f.getForumid());
	        return forumList;
		
	}
	public void removeForum(int forumId) {
		Session session=this.sessionFactory.getCurrentSession();
		Forum f=(Forum)session.load(Forum.class,new Integer(forumId));
		session.delete(f);
        System.out.println("data deleted successfully="+f);
	}
	public void updateForum(Forum f) {
		Session session=this.sessionFactory.getCurrentSession();
        session.update(f);
        System.out.println("data updated successfully="+f);		
	}
	public Forum getForumById(int forumId) {
		Session session=this.sessionFactory.getCurrentSession();
		Forum f=(Forum) session.get(Forum.class,new Integer(forumId));
		System.out.println("data of product by id="+f);
		return f;	
	}

}
