package cn.congqian.dao;
import java.util.List;

import cn.congqian.model.User;

public class UserDaoImpl extends BaseDao<User> implements UserDao{

	@Override
	public List<User> userList() {
		// TODO Auto-generated method stub
		String sql = "select id,username,password,phone,email,address,createtime,status from t_user";
		return super.getList(sql);
	}

	@Override
	public User userLogin(User user) {
		// TODO Auto-generated method stub
		String sql = "select id,username,password,phone,email,address,createtime,status from t_user where phone=? and password=?";
		return super.get(sql, user.getPhone(),user.getPassword());
	}

}
