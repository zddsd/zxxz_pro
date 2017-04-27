package com.zxxz.ssh.service;

import java.util.List;

import com.zxxz.ssh.entity.MovieComment;
import com.zxxz.ssh.entity.MovieInfo;
import com.zxxz.ssh.entity.UserVoMovieComment;

public interface MovieCommentService {
	public void saveOrUpdate(MovieComment MovieComment);   
	public MovieComment findMovieCommentById(int id);
	public void deleteMovieComment(MovieComment MovieComment);
	public void delete(Integer id);
	public List<MovieComment> findListbypage(Integer id,Integer page,Integer rows);
	public long count(Integer id);
	
	public List<MovieComment> findCheckListbypage(Integer page,Integer rows);
	public long checkCount();
	void check(Integer id);
	public List<UserVoMovieComment> findListbypage1(Integer id,Integer page,Integer rows);
	
	public double rateAvg(Integer id);
	public void recheck(Integer id1);
	
}
