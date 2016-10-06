package com.letzchaat.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.letzchaat.dao.ForumDAO;
import com.letzchaat.model.Forum;

@Service
public class ForumServiceImpl implements ForumService {
	ForumDAO forumDAO;
	
	/**
	 * @param forumDAO the forumDAO to set
	 */
	@Transactional
	public void setForumDAO(ForumDAO forumDAO) {
		this.forumDAO = forumDAO;
	}
	@Transactional
	public void addForum(Forum forum) {
		System.out.println("in forum service add");
		forumDAO.addForum(forum);
	}
	
	@Transactional
	public List<Forum> getAllForums() {
		return forumDAO.getAllForums();
	}
	@Transactional
	public void removeForum(int forumId) {
		forumDAO.removeForum(forumId);	
	}
	@Transactional
	public void updateForum(Forum f) {
		forumDAO.updateForum(f);	
	}
	@Transactional
	public Forum getForumById(int forumId) {
		return forumDAO.getForumById(forumId);
		
	}
	

}
