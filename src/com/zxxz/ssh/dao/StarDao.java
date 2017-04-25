package com.zxxz.ssh.dao;

import java.util.List;

import com.zxxz.ssh.entity.StarVoMovieInfo;

public interface StarDao {
	public void delete(Integer id);

	List<StarVoMovieInfo> find(String hql, Object[] param, Integer page, Integer rows);
}
