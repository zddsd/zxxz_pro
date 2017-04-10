package com.zxxz.ssh.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zxxz.ssh.dao.BaseDAO;
import com.zxxz.ssh.dao.UserDao;
import com.zxxz.ssh.entity.User;
import com.zxxz.ssh.service.UserService;

@Transactional //启用事务机制
@Service("UserService")
public class UserServiceImpl implements UserService {


	@Resource
	private BaseDAO<User> baseDAO;
	
	@Resource
	private UserDao UserDao;

	@Override
	public int saveUser(User User) {
		return UserDao.save(User);
	}

	@Override
	public void updateUser(User User) {
		baseDAO.update(User);
	}

	@Override
	public User findUserById(int id) {
		return baseDAO.get(User.class, id);
	}

	@Override
	public void deleteUser(User User) {
		baseDAO.delete(User);
	}

	@Override
	public List<User> findAllList() {
		return baseDAO.find("from User");
	}

	
	//按照id删除管理员
	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		 UserDao.delete(id);
	}

	@Override
	public void saveOrUpdate(User User) {
		// TODO Auto-generated method stub
		baseDAO.saveOrUpdate(User);
	}

	@Override
	public List<User> findListbypage(Integer page,Integer row) {
		// TODO Auto-generated method stub
		//return baseDAO.find("from User",new Object[]{}, page,row);
		return baseDAO.find("from User",new Object[]{}, page,row);
	}

	@Override
	public boolean UserNameIsValid(String username) {
		// TODO Auto-generated method stub
		
		return UserDao.getUserByusername(username)==null;
		
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return baseDAO.count("select count(*) from User");
	}
                
}
