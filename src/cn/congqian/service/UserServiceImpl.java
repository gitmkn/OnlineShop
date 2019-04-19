package cn.congqian.service;

import java.sql.Connection;
import java.util.List;

import cn.congqian.dao.FactoryDao;
import cn.congqian.dao.UserDao;
import cn.congqian.model.User;
import cn.congqian.utils.JdbcUtils;

public class UserServiceImpl implements UserService {
	
	UserDao UserDao = FactoryDao.getUserDao();
	
	@Override
	public int save(User user) {
		// TODO Auto-generated method stub
		return UserDao.save(user);
	}

	@Override
	public int deletUserById(int id) {
		// TODO Auto-generated method stub
		return UserDao.deletUserById(id);
	}

	@Override
	public int updateUserById(User user) {
		// TODO Auto-generated method stub
		return UserDao.updateUserById(user);
	}

	@Override
	public User get(int id) {
		// TODO Auto-generated method stub
		return UserDao.get(id);
	}

	@Override
	public User getTransation(int id) {
		Connection conn = null;
		User user = null;
		try {
			conn = JdbcUtils.getConnection();
			conn.setAutoCommit(false);//开启事务
			user = UserDao.get(conn,id);
			conn.commit();//提交事务
		} catch (Exception e) {
			JdbcUtils.rollbackTransation(conn);//回滚事务
		}
 		return user;
	}

	@Override
	public List<User> getListAll() {
		return UserDao.getListAll();
	}

	@Override
	public long getCountByName(String username) {
		// TODO Auto-generated method stub
		return UserDao.getCountByName(username);
	}

	@Override
	public List<User> query(String username, String address, String phoneNo) {
		return UserDao.query(username,address,phoneNo);
	}

}
