package com.letzchaat.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.letzchaat.model.Authorization;
import com.letzchaat.model.UserRegister;

@Repository
public class UserDAOImpl implements UserDAO {
	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public void addUser(UserRegister user) {
		Session session=this.sessionFactory.getCurrentSession();
		user.setActive(true);
		Authorization auth=new Authorization();
		auth.setRole("ROLE_USER");
		auth.setEmailId(user.getEmailId());
		//Forum f=new Forum();
		user.setForumsCount(0);
		session.persist(user);
		session.persist(auth);
		System.out.println("user register successfully="+user);
	}
	public UserRegister getUserByEmailId(String emailId) {
		System.out.println("getting data in dao based on emailid");
		Session session=this.sessionFactory.getCurrentSession();
		UserRegister u=(UserRegister) session.get(UserRegister.class,emailId);
		System.out.println("data of user by id="+u);
		return u;	
	}
	public List<UserRegister> getAllUsers() {
		Session session=this.sessionFactory.getCurrentSession();
		 Query query = session.createQuery("from UserRegister");
	        List<UserRegister> userList = (List<UserRegister>)query.list();
	        for(UserRegister u:userList) 
	        	System.out.println(u.getEmailId());
	        return userList;
	}
	public int getUserId(String emailId) {
		System.out.println(emailId);
		int uid=0;
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from UserRegister u where u.emailId=:emailid");
		q.setString("emailid",emailId);
		 List<UserRegister>  userList=(List<UserRegister>)q.list();
		 for(UserRegister u:userList) 
			 uid=u.getId();
	        	System.out.println(uid);
		
	      return uid;
	}
	public UserRegister getUserById(int userid) {
		Session session=this.sessionFactory.getCurrentSession();
		UserRegister u=(UserRegister) session.load(UserRegister.class,userid);
		System.out.println("data of user by id="+u);
		return u;	
		}
	public void updateUser(UserRegister u) {
		Session session=this.sessionFactory.getCurrentSession();
        session.update(u);
        System.out.println("data updated successfully="+u);

		
	}

}
