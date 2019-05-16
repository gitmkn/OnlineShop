package cn.congqian.service;

import cn.congqian.dao.FactoryDao;
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
}
