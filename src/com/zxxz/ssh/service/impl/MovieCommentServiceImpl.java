package com.zxxz.ssh.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.apache.jasper.tagplugins.jstl.core.Param;
import org.springframework.stereotype.Service;

import com.zxxz.ssh.dao.BaseDAO;
import com.zxxz.ssh.dao.MovieCommentDao;
import com.zxxz.ssh.dao.MovieInfoDao;
import com.zxxz.ssh.entity.MovieComment;
import com.zxxz.ssh.entity.MovieInfo;
import com.zxxz.ssh.entity.News;
import com.zxxz.ssh.entity.UserVoMovieComment;
import com.zxxz.ssh.service.MovieCommentService;

@Transactional
@Service("MovieCommentService")
public class MovieCommentServiceImpl implements MovieCommentService{
	
	@Resource
	 private BaseDAO<MovieComment> baseDAO;
	@Resource
	private MovieCommentDao MovieCommentDao; 
        
	
	@Override
	public void saveOrUpdate(MovieComment MovieComment) {
		// TODO Auto-generated method stub
		baseDAO.saveOrUpdate(MovieComment);
	}

	@Override
	public MovieComment findMovieCommentById(int id) {
		// TODO Auto-generated method stub
		return  baseDAO.get(MovieComment.class, id);
	}

	@Override
	public void deleteMovieComment(MovieComment MovieComment) {
		// TODO Auto-generated method stub
		baseDAO.delete(MovieComment);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		MovieCommentDao.delete(id);
	}

	@Override
	public List<MovieComment> findListbypage(Integer id,Integer page,Integer rows) {
		// TODO Auto-generated method stub
		Object[] params;//定义
		params = new Object[1];//构建,这时只有定义的4个引用，没有实际对象
		params[0] = new Object();//初始化
		params[0]=id;
		return baseDAO.find("from MovieComment e WHERE e.status=1 and e.movieid=?",params, page, rows);
	}

	@Override
	public long count(Integer id) {
		// TODO Auto-generated method stub
		//return baseDAO.count("select count(*) from MovieComment e WHERE e.status=1 ");
		return MovieCommentDao.infoByIdCount(id);
	}
	@Override
	public void check(Integer id) {
		// TODO Auto-generated method stub
		
		 MovieCommentDao.check(id);
	}
	@Override
    public long checkCount(){
    	
    	return baseDAO.count("select count(*) from MovieComment e WHERE e.status=2");
    }
	
	
	@Override
	public List<MovieComment> findCheckListbypage(Integer page,Integer rows) {
		return baseDAO.find("from MovieComment e WHERE e.status=2",new Object[]{}, page,rows);
	}

	@Override
	public List<UserVoMovieComment> findListbypage1(Integer id,Integer page,Integer rows) {
		// TODO Auto-generated method stub
		Object[] params;//定义
		params = new Object[1];//构建,这时只有定义的4个引用，没有实际对象
		params[0] = new Object();//初始化
		params[0]=id;
		return MovieCommentDao.find("select new com.zxxz.ssh.entity.UserVoMovieComment(e.id,e.score,u.username,e.context,e.commTime)  from MovieComment e,User u  WHERE e.status=1 and u.userid=e.userid  and e.movieid=?",params, page, rows);
	}

	@Override
	public double rateAvg(Integer id) {
		// TODO Auto-generated method stub
		
		Object[] params;//定义
		params = new Object[1];//构建,这时只有定义的4个引用，没有实际对象
		params[0] = new Object();//初始化
		params[0]=id;
		if(baseDAO.count("select count(*) from MovieComment m WHERE m.movieid=? ",params)!=0)
		{
			return MovieCommentDao.rateAvg(id);
		}
		else{
			return 0.0;
		}
	}
	
	
	
             
}
