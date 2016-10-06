package com.letzchaat.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Forum implements Serializable {
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
@Column(name="forumid")	
private int forumid;
@NotEmpty(message="name can not be empty")
@Column(name="forumname")
private String name;
private int userid;
@NotEmpty(message="topic can not be empty")
private String topic;
/**
 * @return the forumid
 */
public int getForumid() {
	return forumid;
}
/**
 * @param forumid the forumid to set
 */
public void setForumid(int forumid) {
	this.forumid = forumid;
}
/**
 * @return the name
 */
public String getName() {
	return name;
}
/**
 * @param name the name to set
 */
public void setName(String name) {
	this.name = name;
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
/**
 * @return the topic
 */
public String getTopic() {
	return topic;
}
/**
 * @param topic the topic to set
 */
public void setTopic(String topic) {
	this.topic = topic;
} 


}
