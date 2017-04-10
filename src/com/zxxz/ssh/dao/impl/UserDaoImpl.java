package com.zxxz.ssh.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.zxxz.ssh.dao.UserDao;
import com.zxxz.ssh.entity.User;

@Repository("UserDao")
@SuppressWarnings("all")
public class UserDaoImpl implements UserDao {
       
	private  SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
    
	
	public Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		String hql = "DELETE FROM User e WHERE e.id = ?";
		getCurrentSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}

	@Override
	public int save(User user) {
		// TODO Auto-generated method stub
		this.getCurrentSession().save(user);
		return user.getUserid();
	}
	
	
	public User getUserByusername(String username){
		String hql = "FROM User e WHERE e.username = ?";
		Query query = getCurrentSession().createQuery(hql).setString(0, username);
		User User = (User) query.uniqueResult();
		
		return User;
	}
     
}
