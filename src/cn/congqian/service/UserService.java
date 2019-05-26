package cn.congqian.service;

import java.util.List;

import cn.congqian.model.User;

public interface UserService {
	/**
	 * 用户列表
	 * @param user
	 * @return
	 */
	public List<User> userList();
	
	/**
	 * 用户登录
	 * @param user
	 * @return
	 */
	public User userLogin(User user);
	
	/**
	 * 用户修改密码
	 * @param user
	 * @return
	 */
	public int updatePassword(User user);
	
	/**
	 * 用户修改信息
	 * @param user
	 * @return
	 */
	public int update(User user);
	
	/**
	 * 用户注册
	 * @param user
	 * @return
	 */
	public int insert(User user);
}
