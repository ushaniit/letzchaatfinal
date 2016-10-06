package com.letzchaat.service;

import java.util.List;

import com.letzchaat.model.Blog;

public interface BlogService {
	void addBlog(Blog forum);
	List<Blog> getAllBlogs();
	void removeBlog(int blogId);
	void updateBlog(Blog b);
	Blog getBlogById(int blogId);}
