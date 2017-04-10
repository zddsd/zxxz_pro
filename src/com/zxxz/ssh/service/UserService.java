package com.zxxz.ssh.service;

import java.util.List;

import com.zxxz.ssh.entity.User;

public interface UserService {
        
	public int saveUser(User User);

	public void updateUser(User User);
	
	public void saveOrUpdate(User User);

	public User findUserById(int id);

	public void deleteUser(User User);

	public List<User> findAllList();
	
	public void delete(Integer id);
	public List<User> findListbypage(Integer page,Integer rows);
	public boolean UserNameIsValid(String username);
	
	public long count();
}
