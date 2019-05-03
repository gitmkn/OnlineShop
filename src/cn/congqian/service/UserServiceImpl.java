package cn.congqian.service;

import java.util.List;

import cn.congqian.dao.FactoryDao;
import cn.congqian.dao.UserDao;
import cn.congqian.model.User;

public class UserServiceImpl implements UserService {
	
	UserDao userDao = FactoryDao.getUserDao();

	@Override
	public List<User> userList() {
		// TODO Auto-generated method stub
		return userDao.userList();
	}

	@Override
	public User userLogin(User user) {
		// TODO Auto-generated method stub
		return userDao.userLogin(user);
	}
	
}
