package com.zxxz.ssh.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.zxxz.ssh.dao.CommentDao;
import com.zxxz.ssh.entity.UserVoComment;


@Repository("CommentDao")
@SuppressWarnings("all")
public class CommentDaoImpl implements CommentDao {
   
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
		String hql = "DELETE FROM Comment e WHERE e.comment_id = ?";
		this.getCurrentSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}

	@Override
	public void check(Integer id) {
		// TODO Auto-generated method stub
		String hql="UPDATE Comment e SET e.status=2 WHERE e.comment_id=?";
		this.getCurrentSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}

	

	@Override
	public Long checkByPageCount() {
		// TODO Auto-generated method stub
		return (Long) this.getCurrentSession().createQuery("SELECT count(*) FROM Comment e WHERE e.status=2").uniqueResult(); 
	}
	@Override
	public Long infoByIdCount(Integer id){
		// TODO Auto-generated method stub
		String hql="SELECT count(*) FROM Comment e WHERE e.status=1 and e.infoId=?";
		return (Long) this.getCurrentSession().createQuery(hql).setInteger(0, id).uniqueResult(); 
	}
	
	public List<UserVoComment> find(String hql, Object[] param, Integer page, Integer rows) {
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

	@Override
	public void recheck(Integer id) {
		// TODO Auto-generated method stub
		String hql="UPDATE Comment e SET e.status=1 WHERE e.comment_id=?";
		this.getCurrentSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}
	
} 
