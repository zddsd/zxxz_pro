package com.zxxz.ssh.service.impl;

import java.util.List;
import javax.annotation.Resource;
import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import com.zxxz.ssh.dao.BaseDAO;
import com.zxxz.ssh.dao.MovieInfoDao;
import com.zxxz.ssh.entity.MovieInfo;
import com.zxxz.ssh.service.MovieInfoService;
@Transactional
@Service("MovieInfoService")
public class MovieInfoServiceImpl implements MovieInfoService{
    @Resource
     private BaseDAO<MovieInfo> baseDAO;
    
    @Resource
    private MovieInfoDao movieinfoDao;
    
    
	@Override
	public void saveOrUpdate(MovieInfo movieInfo) {
		// TODO Auto-generated method stub
		baseDAO.saveOrUpdate(movieInfo);
	}

	@Override
	public MovieInfo findMovieInfoById(int id) {
		// TODO Auto-generated method stub
		return  baseDAO.get(MovieInfo.class, id);
	}

	@Override
	public void deleteMovieInfo(MovieInfo movieInfo) {
		// TODO Auto-generated method stub
		baseDAO.delete(movieInfo);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		movieinfoDao.delete(id);
	}

	@Override
	public List<MovieInfo> findListbypage(Integer page, Integer rows) {
		// TODO Auto-generated method stub
		return baseDAO.find("from MovieInfo", new Object[]{}, page, rows);
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return baseDAO.count("select count(*) from MovieInfo");
	}

	@Override
	public List<MovieInfo> find() {
		// TODO Auto-generated method stub
		int num=4;
		return movieinfoDao.find("from MovieInfo m ORDER BY  m.showDate DESC", num);
	}
	@Override
	public List<MovieInfo> favorite(String class_,Integer id) {
		Object[] params;//定义
		params = new Object[2];//构建,这时只有定义的4个引用，没有实际对象
		params[0] = new Object();//初始化
		params[0]=class_;
		params[1]=id;
		int num =4;
		return movieinfoDao.favorite("from MovieInfo m WHERE m.class_=? and m.id<>? ORDER BY  m.id DESC ",params ,num);
	
	}
	

	@Override
	public long count(String zone) {
		// TODO Auto-generated method stub
		Object[] params;//定义
		params = new Object[1];//构建,这时只有定义的4个引用，没有实际对象
		params[0] = new Object();//初始化
		params[0]=zone;
		return baseDAO.count("select count(*) from MovieInfo",params);
	}
	
	@Override
	public List<MovieInfo> metch(String str)
	{   
		
		Object[] params;//定义
		params = new Object[1];//构建,这时只有定义的4个引用，没有实际对象
		params[0] = new Object();//初始化
		str="%"+str+"%";
		params[0]=str;
		return baseDAO.find("from MovieInfo m Where m.name like ? ", params);
	}
	
	@Override
	public  List<MovieInfo> re()
	{

	    return movieinfoDao.find2();
	
	}

	
	
	
}
