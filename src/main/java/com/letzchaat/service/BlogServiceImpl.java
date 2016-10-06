package com.letzchaat.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.letzchaat.dao.BlogDAO;
import com.letzchaat.model.Blog;

@Service
public class BlogServiceImpl implements BlogService {
	BlogDAO blogDAO;
	
	/**
	 * @param blogDAO the blogDAO to set
	 */
	@Transactional
	public void setBlogDAO(BlogDAO blogDAO) {
		this.blogDAO = blogDAO;
	}
	@Transactional
	public void addBlog(Blog b) {
		blogDAO.addBlog(b);	
	}
	@Transactional
	public List<Blog> getAllBlogs() {
		return blogDAO.getAllBlogs();
	}
	@Transactional
	public void removeBlog(int blogId) {
		blogDAO.removeBlog(blogId);
	}
	@Transactional
	public void updateBlog(Blog b) {
		blogDAO.updateBlog(b);
	}
	@Transactional
	public Blog getBlogById(int blogId) {
		return blogDAO.getBlogById(blogId);
	}

}
