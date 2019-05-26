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
		/*List<User> list = userDao.userList();
		String str = "";
		for(int i = 0; i <= list.size() - 1; i++) {
			if(i == list.size() - 1) {
				str += "['" + list.get(i).getId() + "','" + list.get(i).getUsername() + "','" + list.get(i).getPhone() + "','" + list.get(i).getEmail() + "','" + list.get(i).getAddress() + "','" + list.get(i).getCreatetime() + "','" + list.get(i).getStatus() + "',oper]";
				str.replaceAll(" ", "");
			}else {
				str += "['" + list.get(i).getId() + "','" + list.get(i).getUsername() + "','" + list.get(i).getPhone() + "','" + list.get(i).getEmail() + "','" + list.get(i).getAddress() + "','" + list.get(i).getCreatetime() + "','" + list.get(i).getStatus() + "',oper],";
				str.replaceAll(" ", "");
			}
		}
		str += "]";
		System.out.println(str);*/
		return userDao.userList();
	}

	@Override
	public User userLogin(User user) {
		// TODO Auto-generated method stub
		return userDao.userLogin(user);
	}

	@Override
	public int updatePassword(User user) {
		// TODO Auto-generated method stub
		return userDao.updatePassword(user);
	}

	@Override
	public int update(User user) {
		// TODO Auto-generated method stub
		return userDao.update(user);
	}

	@Override
	public int insert(User user) {
		// TODO Auto-generated method stub
		return userDao.insert(user);
	}
	
}
