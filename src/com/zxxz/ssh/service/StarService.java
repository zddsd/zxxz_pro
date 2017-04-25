package com.zxxz.ssh.service;

import java.util.List;
import com.zxxz.ssh.entity.Star;
import com.zxxz.ssh.entity.StarVoMovieInfo;

public interface StarService {
	public void saveOrUpdate(Star star);
	//public List<Star> findListbypage(Integer page,Integer rows);
	public void delete(Integer id);
	//public long count();//根据userid查出收藏条数 按分类
	long count(Integer id, String class_);
	List<StarVoMovieInfo> findListbypage(Integer id, String class_, Integer page, Integer rows);
	boolean findContextIdByUserid(Integer userid, Integer contextid);
}
