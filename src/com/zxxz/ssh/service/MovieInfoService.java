package com.zxxz.ssh.service;

import java.util.List;

import com.zxxz.ssh.entity.MovieInfo;
import com.zxxz.ssh.entity.movieId;
import com.zxxz.ssh.entity.movieIdVoC;
import com.zxxz.ssh.entity.movieInfoVoComment;

public interface MovieInfoService  {
	public void saveOrUpdate(MovieInfo movieInfo);
	public MovieInfo findMovieInfoById(int id);
	public void deleteMovieInfo(MovieInfo movieInfo);
	public void delete(Integer id);
	public List<MovieInfo> findListbypage(Integer page,Integer rows);
	public long count();
	List<MovieInfo> find();
	public long count(String zone);
	List<MovieInfo> favorite(String class_, Integer id);
	List<MovieInfo> metch(String str);
	List<MovieInfo> re();
	List<MovieInfo> movieList(String zone, String class_, Integer page, Integer rows);
	public long movieListCount(String zone, String class_);
	
}
