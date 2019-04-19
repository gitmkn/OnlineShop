package cn.congqian.service;

import java.util.List;

import cn.congqian.model.User;

public interface UserService {
	/**
	 * 实现插入一条新用户信息数据
	 * @param user
	 * @return
	 */
	public int save(User user);
	
	/**
	 * 根据用户编号删除对应的用户数据
	 */
	public int deletUserById(int id);
	
	/**
	 * 根据用户id修改对应的用户信息
	 * @param id
	 * @return
	 */
	public int updateUserById(User user);
	
	/**
	 * 不支持事务
	 * 根据用户编号获取用户数据，封装成类User的一个对象
	 */
	public User get(int id);
	
	/**
	 * 支持事务
	 * @param conn
	 * @param id
	 * @return
	 */
	public User getTransation(int id);
	/**
	 * 获取所有用户的数据
	 * @return
	 */
	public List<User> getListAll();
	
	/**
	 * 查询指定用户名的用户有多少条
	 * @param username
	 * @return
	 */
	public long getCountByName(String username);
	
	/**
	 * 这是用户模糊查询的方法
	 * @param username
	 * @param address
	 * @param phoneNo
	 * @return
	 */
	public List<User> query(String username, String address, String phoneNo);
}
