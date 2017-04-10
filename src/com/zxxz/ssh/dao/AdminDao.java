package com.zxxz.ssh.dao;

import java.util.List;

import com.zxxz.ssh.entity.Admin;

public interface AdminDao {
	
	public void delete(Integer id);
	public List<Admin> getAll();
	public void saveOrUpdate(Admin Admin);
	
	public Admin get(Integer id);
}
