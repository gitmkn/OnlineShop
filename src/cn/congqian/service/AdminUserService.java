package cn.congqian.service;

import java.util.List;

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
