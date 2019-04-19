package cn.congqian.dao;

import java.sql.Connection;
import java.util.List;

import cn.congqian.model.User;

/**
 * 接口是制定规则，只定义方法，不去实现，UserDao：定义与user表有关的操作方法
 * @author mkn
 *
 */
public interface UserDao {

	
	
	/**
	 * 查询指定用户名的用户有多少条
	 * @param username
	 * @return
	 */
	public long getCountByName(String username);
}
