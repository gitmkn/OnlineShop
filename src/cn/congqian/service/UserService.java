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
}
