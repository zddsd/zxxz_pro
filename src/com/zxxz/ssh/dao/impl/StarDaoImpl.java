package com.zxxz.ssh.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zxxz.ssh.dao.StarDao;
import com.zxxz.ssh.entity.StarVoMovieInfo;
@Repository("StarDao")
@SuppressWarnings("all")
public class StarDaoImpl implements StarDao {
	private  SessionFactory sessionFactory;
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
		String hql = "DELETE FROM Star e WHERE e.star_id = ?";
		getCurrentSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}
	@Override
	public List<StarVoMovieInfo> find(String hql, Object[] param, Integer page, Integer rows) {
		if (page == null || page < 1) {
			page = 1;
		}
		if (rows == null || rows < 1) {
			rows = 10;
		}
		Query q = this.getCurrentSession().createQuery(hql);
		if (param != null && param.length > 0) {
			for (int i = 0; i < param.length; i++) {
				q.setParameter(i, param[i]);
			}
		}
		return q.setFirstResult((page - 1) * rows).setMaxResults(rows).list();
	}

}
