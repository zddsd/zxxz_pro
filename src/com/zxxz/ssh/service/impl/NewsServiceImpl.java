package com.zxxz.ssh.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.zxxz.ssh.dao.BaseDAO;
import com.zxxz.ssh.dao.NewsDao;
import com.zxxz.ssh.entity.News;
import com.zxxz.ssh.service.NewsService;

@Transactional
@Service("NewsService")
public class NewsServiceImpl implements NewsService {
     
	
	@Resource 
	private BaseDAO<News> baseDAO;
	
	@Resource
	private NewsDao newsDao;
	@Override
	public void saveOrUpdate(News news) {
		// TODO Auto-generated method stub
		baseDAO.saveOrUpdate(news);
	}

	@Override
	public News findNewsById(int id) {
		// TODO Auto-generated method stub
		return baseDAO.get(News.class, id);
	}

	@Override
	public void deleteNews(News News) {
		// TODO Auto-generated method stub
		baseDAO.delete(News);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		newsDao.delete(id);
	}

	@Override
	public List<News> findListbypage(Integer page, Integer rows) {
		// TODO Auto-generated method stub
		return baseDAO.find("from News", new Object[]{}, page, rows);
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return baseDAO.count("select count(*) from News");
	}

	@Override
	public List<News> find() {
		// TODO Auto-generated method stub
		Integer num=4;
		
		return newsDao.find("from News n ORDER BY n.id DESC",num);
	}

	@Override
	public long count(String zone) {
		// TODO Auto-generated method stub
		Object[] params;//定义
		params = new Object[1];//构建,这时只有定义的4个引用，没有实际对象
		params[0] = new Object();//初始化
		params[0]=zone;
		return baseDAO.count("select count(*) from News n where n.zone=? ",params);
	}

	@Override
	public List<News> menu(String zone, Integer page, Integer rows) {
		// TODO Auto-generated method stub
		Object[] params;//定义
		params = new Object[1];//构建,这时只有定义的4个引用，没有实际对象
		params[0] = new Object();//初始化
		params[0]=zone;
		//int num =4;
		return baseDAO.find("from News m WHERE m.zone=? ", params,page,rows);
	}

}
