package cn.congqian.service;

import cn.congqian.model.AdminUser;

public interface AdminUserService {
	/**
	 * 管理员登录
	 * @param user
	 * @return
	 */
	public AdminUser AdminLogin(AdminUser user);
	
	/**
	 * 管理员修改密码
	 * @param user
	 * @return
	 */
	public int updatePassword(AdminUser user);
}
