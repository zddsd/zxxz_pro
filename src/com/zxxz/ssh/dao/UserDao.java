package com.zxxz.ssh.dao;


import com.zxxz.ssh.entity.User;

public interface UserDao {
	public void delete(Integer id);
	
	public int save(User user);
	public User getUserByusername(String username);
	
}
