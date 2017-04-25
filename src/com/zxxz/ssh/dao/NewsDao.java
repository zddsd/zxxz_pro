package com.zxxz.ssh.dao;

import java.util.List;

import com.zxxz.ssh.entity.News;

public interface NewsDao {
	public void delete(Integer id);

	List<News> find(String hql, Integer param);
	
	
	
}
