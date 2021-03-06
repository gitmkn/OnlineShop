package cn.congqian.dao;
import java.util.List;

import cn.congqian.model.User;

public class UserDaoImpl extends BaseDao<User> implements UserDao{

	@Override
	public List<User> userList(int status) {
		// TODO Auto-generated method stub
		String sql = "select id,username,password,sex,phone,email,address,createtime,status from t_user where status=?";
		return super.getList(sql,status);
	}

	@Override
	public User userLogin(User user) {
		// TODO Auto-generated method stub
		String sql = "select id,username,password,sex,phone,email,address,createtime,status from t_user where phone=? and password=?";
		return super.get(sql, user.getPhone(),user.getPassword());
	}
	
	@Override
	public int update(User user) {
		// TODO Auto-generated method stub
		System.out.println(user.getId()+user.getStatus());
		String sql = "update t_user set username=?,sex=?,phone=?,email=?,address=?,createtime=? where id=?";
		return super.update(sql, user.getUsername(),user.getSex(),user.getPhone(),user.getEmail(),user.getAddress(),user.getCreatetime(),user.getId());
	}
	
	@Override
	public int updateStatus(User user) {
		// TODO Auto-generated method stub
		System.out.println(user.getId()+user.getStatus());
		String sql = "update t_user set status=? where id=?";
		return super.update(sql, user.getStatus(),user.getId());
	}

	@Override
	public int updatePassword(User user) {
		// TODO Auto-generated method stub
		String sql = "update t_user set password=? where id=?";
		return super.update(sql, user.getPassword(),user.getId());
	}

	@Override
	public int insert(User user) {
		// TODO Auto-generated method stub
		String sql = "insert into t_user(phone,password,status) value(?,?,?)";
		return super.update(sql, user.getPhone(),user.getPassword(),user.getStatus());
	}

	

}
