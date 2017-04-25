package com.zxxz.ssh.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.zxxz.ssh.dao.BaseDAO;
import com.zxxz.ssh.dao.StarDao;
import com.zxxz.ssh.entity.Star;
import com.zxxz.ssh.entity.StarVoMovieInfo;
import com.zxxz.ssh.service.StarService;
@Transactional
@Service("StarService")
public class StarServiceImpl implements StarService {
 
	
	
	@Resource
	private BaseDAO<Star> baseDAO;
	@Resource
	private StarDao starDao;
	
	@Override
	public void saveOrUpdate(Star star) {
		// TODO Auto-generated method stub
		baseDAO.saveOrUpdate(star);
	}

	@Override
	public List<StarVoMovieInfo> findListbypage(Integer id,String class_,Integer page, Integer rows) {
		// TODO Auto-generated method stub
		
		
		Object[] params;//定义
		params = new Object[2];//构建,这时只有定义的4个引用，没有实际对象
		params[0] = new Object();//初始化
		params[0]=id;
		params[1]=class_;
		
		return starDao.find("select new com.zxxz.ssh.entity.StarVoMovieInfo(e.star_id,e.context_id,"
				+ "e.user_id,e.date,e.class_,m.name) From Star e,MovieInfo m Where  e.user_id=? and e.class_=? and e.context_id=m.id", params, page, rows);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		//baseDAO.delete(id);
		starDao.delete(id);
		
	}

	@Override
	public long count(Integer id,String class_) {
		// TODO Auto-generated method stub
		
		Object[] params;//定义
		params = new Object[2];//构建,这时只有定义的4个引用，没有实际对象
		params[0] = new Object();//初始化
		params[0]=id;
		params[1]=class_;
		return baseDAO.count("Select count(*) From Star e Where  e.user_id=? and e.class_=?", params);
	}
     @Override
	public boolean findContextIdByUserid(Integer userid,Integer contextid) {
		// TODO Auto-generated method stub
		
		Object[] params;//定义
		params = new Object[2];//构建,这时只有定义的4个引用，没有实际对象
		params[0] = new Object();//初始化
		params[0]=userid;
		params[1]=contextid;
	   List<Star>  star= baseDAO.find("FROM Star e Where  e.user_id=? and e.context_id=?", params);
	   System.out.println(star);
	   if(star.isEmpty()||star.size()==0)
	   {
		   return true;
	   }
	   else{
		  
		   return false;   
	   }
	   }
}
