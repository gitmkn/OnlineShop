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
	 * 用户插入
	 * @param user
	 * @return
	 */
	public int save(User user);
	
	/**
	 * 根据id删除
	 * @param id
	 * @return
	 */
	public int deletUserById(int id);
	
	/**
	 * 修改
	 * @param user
	 * @return
	 */
	public int updateUserById(User user);
	
	/**
	 * 根据id查询（事务）
	 * @param id
	 * @return
	 */
	public User get(int id);
	
	/**
	 * 根据id查询
	 * @param conn
	 * @param id
	 * @return
	 */
	public User get(Connection conn, int id);
	
	/**
	 * 查询全部
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
	 * 根据姓名、地址、电话模糊查询
	 * @param username
	 * @param address
	 * @param phoneNo
	 * @return
	 */
	public List<User> query(String username, String address, String phoneNo);
}
