package com.zxxz.ssh.dao.impl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.zxxz.ssh.dao.MovieInfoDao;
import com.zxxz.ssh.entity.MovieInfo;
import com.zxxz.ssh.entity.movieIdVoC;
import com.zxxz.ssh.entity.movieInfoVoComment;
@Repository("MovieInfoDao")
@SuppressWarnings("all")
public class MovieInfoDaoImpl implements MovieInfoDao {
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
		String hql = "DELETE FROM MovieInfo e WHERE e.id = ?";
		getCurrentSession().createQuery(hql).setInteger(0, id).executeUpdate();
	}

	
	@Override
	public List<MovieInfo> find(String hql, Integer param) {
		// TODO Auto-generated method stub
		Query q = this.getCurrentSession().createQuery(hql);
		q.setMaxResults(param);
		return q.list();
	}
     
	@Override
	public List<MovieInfo> favorite(String hql,Object[] param, Integer num) {
		// TODO Auto-generated method stub
		Query q = this.getCurrentSession().createQuery(hql);
		if (param != null && param.length > 0) {
			for (int i = 0; i < param.length; i++) {
				q.setParameter(i, param[i]);
			}
		}
		q.setMaxResults(num);
		return q.list();
	}
	@Override
	public List<movieInfoVoComment> find(String hql) {
		// TODO Auto-generated method stub
		
		
		return this.getCurrentSession().createQuery(hql).list();
		
		//return this.getCurrentSession().createSQLQuery(sql).list();
	}
	@Override
	public List<movieIdVoC> find1(String hql) {
		// TODO Auto-generated method stub
		return this.getCurrentSession().createQuery(hql).list();
	}
	@Override
	public List<MovieInfo> find2(){
        int res=6;
		Query q=this.getCurrentSession().createQuery("select new com.zxxz.ssh.entity.movieIdVoC(n.movieid ,count(*))  "
		 		+ "from MovieComment n group by n.movieid");
		q.setMaxResults(res);
		List<movieIdVoC> list =q.list();
		int count=0;
		 Object[] params;//定义
		 params = new Object[res];//构建,这时只有定义的4个引用，没有实际对象
		 for (Iterator iterator = list.iterator(); iterator.hasNext();) 
		  {   
			 movieIdVoC movieIdVoC = (movieIdVoC) iterator.next();
			             params[count] = new Object();//初始化
			             params[count]   =movieIdVoC.getMovieid();
			             count++;
			            System.out.println("MovieID-"+movieIdVoC.getMovieid());   
		  }  
		  
		 Query query=this.getCurrentSession().createQuery("From MovieInfo Where id in (:alist)");
		 query.setParameterList("alist", params);
		// query.setMaxResults(res);
		  return query.list();
	}
	
	
}
