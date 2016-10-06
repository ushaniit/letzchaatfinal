package com.letzchaat.service;

import java.util.List;

import com.letzchaat.model.Forum;

public interface ForumService {
void addForum(Forum forum);
List<Forum> getAllForums();
void removeForum(int forumId);
void updateForum(Forum f);
Forum getForumById(int forumId);
}
