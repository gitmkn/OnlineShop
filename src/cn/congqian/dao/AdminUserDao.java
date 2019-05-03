package cn.congqian.dao;

import cn.congqian.model.AdminUser;

/**
 * 接口是制定规则，只定义方法，不去实现，UserDao：定义与user表有关的操作方法
 * @author mkn
 *
 */
public interface AdminUserDao {

	/**
	 * 管理员登录
	 * @param user
	 * @return
	 */
	public AdminUser adminLogin(AdminUser user);
}