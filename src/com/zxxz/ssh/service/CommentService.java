package com.zxxz.ssh.service;

import java.util.List;
import com.zxxz.ssh.entity.Comment;
import com.zxxz.ssh.entity.UserVoComment;




public interface CommentService {
	public void saveOrUpdate(Comment comment);   
	public Comment findCommentById(int id);
	public void deleteComment(Comment comment);
	public void delete(Integer id);
	public List<Comment> findListbypage(Integer id,Integer page,Integer rows);
	public long count(Integer id);
	
	public List<Comment> findCheckListbypage(Integer page,Integer rows);
	public long checkCount();
	void check(Integer id);
	public List<UserVoComment> findListbypage1(Integer id,Integer page,Integer rows);
}
