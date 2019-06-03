package cn.congqian.service;

import cn.congqian.dao.FactoryDao;

import java.util.List;

import cn.congqian.dao.AdminUserDao;
import cn.congqian.model.AdminUser;

public class AdminUserServiceImpl implements AdminUserService {
	
	AdminUserDao adminUserDao = FactoryDao.getAdminUserDao();
	
	@Override
	public AdminUser AdminLogin(AdminUser user) {
		// TODO Auto-generated method stub
		return adminUserDao.adminLogin(user);
	}

	@Override
	public int updatePassword(AdminUser user) {
		// TODO Auto-generated method stub
		return adminUserDao.updatePassword(user);
	}

	@Override
	public List<AdminUser> AdminList(int status) {
		// TODO Auto-generated method stub
		return adminUserDao.AdminList(status);
	}

	@Override
	public int updateStatus(AdminUser adminUser) {
		// TODO Auto-generated method stub
		return adminUserDao.updateStatus(adminUser);
	}

	@Override
	public int insertAdmin(AdminUser adminUser) {
		// TODO Auto-generated method stub
		return adminUserDao.insertAdmin(adminUser);
	}
}
