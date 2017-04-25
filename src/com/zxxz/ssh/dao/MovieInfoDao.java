package com.zxxz.ssh.dao;

import java.util.List;

import com.zxxz.ssh.entity.MovieInfo;
import com.zxxz.ssh.entity.movieIdVoC;
import com.zxxz.ssh.entity.movieInfoVoComment;

public interface MovieInfoDao {
	public void delete(Integer id);
	public  List<MovieInfo> find(String hql, Integer param);
	public List<MovieInfo> favorite(String string, Object[] params, Integer num);
	public List<movieInfoVoComment> find(String string);
	public List<movieIdVoC> find1(String string);
	public List<MovieInfo> find2();
	
}
