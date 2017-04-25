package com.zxxz.ssh.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zxxz.ssh.dao.NewsDao;
import com.zxxz.ssh.entity.News;

@Repository("NewsDao")
@SuppressWarnings("all")
public class NewsDaoImpl implements NewsDao {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	@Autowired
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	private Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		String hql = "DELETE FROM News e WHERE e.id = ?";
		getCurrentSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}
	@Override
	public List<News> find(String hql,Integer param) {
		// TODO Auto-generated method stub
		//String hql="";
		Query q = this.getCurrentSession().createQuery(hql);
		q.setMaxResults(param);
		return q.list();
	}

}
