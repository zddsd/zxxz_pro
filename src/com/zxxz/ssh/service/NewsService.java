package com.zxxz.ssh.service;

import java.util.List;
import com.zxxz.ssh.entity.News;

public interface NewsService {
	public void saveOrUpdate(News news);
	public News findNewsById(int id);
	public void deleteNews(News News);
	public void delete(Integer id);
	public List<News> findListbypage(Integer page,Integer rows);
	public long count();
	public List<News> find();
	public long count(String zone);
	public List<News>  menu(String zone, Integer page, Integer rows);
}
