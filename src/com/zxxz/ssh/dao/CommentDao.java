package com.zxxz.ssh.dao;

import java.util.List;

import com.zxxz.ssh.entity.UserVoComment;

public interface CommentDao {
	public void delete(Integer id);
	
	public void  check(Integer id);
	
	public Long checkByPageCount();
	
	public Long infoByIdCount(Integer id);
	public List<UserVoComment> find(String hql, Object[] param, Integer page, Integer rows);

	public void recheck(Integer id);
	

}
