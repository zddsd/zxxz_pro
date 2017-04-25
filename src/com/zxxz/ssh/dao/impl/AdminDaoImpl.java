package com.zxxz.ssh.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zxxz.ssh.dao.AdminDao;
import com.zxxz.ssh.entity.Admin;



@Repository("AdminDao")
@SuppressWarnings("all")
public class AdminDaoImpl implements AdminDao{
	
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
	
	public void delete(Integer id){
		String hql = "DELETE FROM Admin e WHERE e.id = ?";
		getCurrentSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}
	
	public List<Admin> getAll(){
		String hql = "FROM Admin ";
		return getCurrentSession().createQuery(hql).list();
	}
	
	public void saveOrUpdate(Admin Admin){
		getCurrentSession().saveOrUpdate(Admin);
	}
	public Admin get(Integer id){
		return (Admin) getCurrentSession().get(Admin.class, id);
	}

	

} 
