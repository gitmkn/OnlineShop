package cn.congqian.dao;

import java.util.List;

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
	
	/**
	 * 管理员修改密码
	 * @param user
	 * @return
	 */
	public int updatePassword(AdminUser user);
	
	
	/**
	 * 管理员列表
	 * @param user
	 * @return
	 */
	public List<AdminUser> AdminList(int status);
	
	/**
	 * 修改管理员状态
	 * @param user
	 * @return
	 */
	public int updateStatus(AdminUser adminUser);
	
	/**
	 * 添加管理员
	 * @param user
	 * @return
	 */
	public int insertAdmin(AdminUser adminUser);
}
