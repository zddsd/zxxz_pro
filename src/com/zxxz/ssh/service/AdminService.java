package com.zxxz.ssh.service;

import java.util.List;

import com.zxxz.ssh.entity.Admin;
public interface AdminService {

	public void saveAdmin(Admin Admin);

	public void updateAdmin(Admin Admin);
	
	public void saveOrUpdate(Admin admin);

	public Admin findAdminById(int id);

	public void deleteAdmin(Admin Admin);

	public List<Admin> findAllList();
	
	public void delete(Integer id);
	public List<Admin> findListbypage(Integer page,Integer rows);
	public long count();

}