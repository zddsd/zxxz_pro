package com.zxxz.ssh.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.zxxz.ssh.dao.AdminDao;
import com.zxxz.ssh.dao.BaseDAO;
import com.zxxz.ssh.entity.Admin;
import com.zxxz.ssh.service.AdminService;

@Transactional // 启用事务机制
@Service("AdminService")
public class AdminServiceImpl implements AdminService {

	@Resource
	private BaseDAO<Admin> baseDAO;

	@Resource
	private AdminDao adminDao;

	@Override
	public void saveAdmin(Admin Admin) {
		baseDAO.save(Admin);
	}

	@Override
	public void updateAdmin(Admin Admin) {
		baseDAO.update(Admin);
	}

	@Override
	public Admin findAdminById(int id) {
		return baseDAO.get(Admin.class, id);
	}

	@Override
	public void deleteAdmin(Admin Admin) {
		baseDAO.delete(Admin);
	}

	@Override
	public List<Admin> findAllList() {
		return baseDAO.find("from Admin");
	}

	// 按照id删除管理员
	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		adminDao.delete(id);
	}

	@Override
	public void saveOrUpdate(Admin admin) {
		// TODO Auto-generated method stub
		baseDAO.saveOrUpdate(admin);
	}

	@Override
	public List<Admin> findListbypage(Integer page, Integer row) {
		// TODO Auto-generated method stub
		return baseDAO.find("from Admin", new Object[] {}, page, row);
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return baseDAO.count("select count(*) from Admin");
	}

}
