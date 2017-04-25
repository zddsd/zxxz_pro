package com.zxxz.ssh.dao.impl;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.zxxz.ssh.dao.MovieCommentDao;
import com.zxxz.ssh.entity.UserVoMovieComment;


	@Repository("MovieCommentDao")
	@SuppressWarnings("all")
	public class MovieCommentDaoImpl implements MovieCommentDao {
		   
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
			String hql = "DELETE FROM MovieComment e WHERE e.id = ?";
			this.getCurrentSession().createQuery(hql).setInteger(0, id).executeUpdate();
		}

		@Override
		public void check(Integer id) {
			// TODO Auto-generated method stub
			String hql="UPDATE MovieComment e SET e.status=2 WHERE e.id=?";
			this.getCurrentSession().createQuery(hql).setInteger(0, id).executeUpdate();
		}

		

		@Override
		public Long checkByPageCount() {
			// TODO Auto-generated method stub
			return (Long) this.getCurrentSession().createQuery("SELECT count(*) FROM MovieComment e WHERE e.status=2").uniqueResult(); 
		}
		@Override
		public Long infoByIdCount(Integer id){
			// TODO Auto-generated method stub
			String hql="SELECT count(*) FROM MovieComment e WHERE e.status=1 and e.movieid=?";
			return (Long) this.getCurrentSession().createQuery(hql).setInteger(0, id).uniqueResult(); 
		}
		
		public List<UserVoMovieComment> find(String hql, Object[] param, Integer page, Integer rows) {
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
		public double rateAvg(Integer id) {
			// TODO Auto-generated method stub
			String hql="SELECT avg(score) FROM MovieComment  e where e.movieid=?";
			return  (double) this.getCurrentSession().createQuery(hql).setInteger(0, id).uniqueResult();
		}
		
	} 