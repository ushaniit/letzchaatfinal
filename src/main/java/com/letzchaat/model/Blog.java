package com.letzchaat.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "Blogs")
@Entity
public class Blog implements Serializable {
	@Column(name = "blogid")
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int blogid;
	private String title;
	private String description;
	@Column( name = "bdate" )
	Date date;
	private int userid;
	/**
	 * @return the blogid
	 */
	public int getBlogid() {
		return blogid;
	}
	/**
	 * @param blogid the blogid to set
	 */
	public void setBlogid(int blogid) {
		this.blogid = blogid;
	}
	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}
	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}
	/**
	 * @return the date
	 */
	public Date getDate() {
		return date;
	}
	/**
	 * @param date the date to set
	 */
	public void setDate(Date date) {
		this.date = date;
	}
	/**
	 * @return the userid
	 */
	public int getUserid() {
		return userid;
	}
	/**
	 * @param userid the userid to set
	 */
	public void setUserid(int userid) {
		this.userid = userid;
	}
	

	}
