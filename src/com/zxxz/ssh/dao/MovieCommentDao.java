package com.zxxz.ssh.dao;

import java.util.List;

import com.zxxz.ssh.entity.UserVoMovieComment;

public interface MovieCommentDao {
public void delete(Integer id);
	
	public void  check(Integer id);
	
	public Long checkByPageCount();
	
	public Long infoByIdCount(Integer id);
	public List<UserVoMovieComment> find(String hql, Object[] param, Integer page, Integer rows);
	
	public double rateAvg(Integer id);

	public void recheck(Integer id1);
}
