package cn.congqian.dao;

import java.sql.Connection;
import java.util.List;

import cn.congqian.model.User;

public class UserDaoImpl extends BaseDao<User> implements UserDao {

	@Override
	public int save(User user) {
		String sql = "INSERT INTO `user` (`username`,`password`,`phoneNo`,`address`,`regDate`) VALUE(?,?,?,?,?);";
		return super.update(sql, user.getUsername(), user.getPassword(), user.getPhoneNo(), user.getAddress(),
				user.getRegDate());
	}

	@Override
	public int deletUserById(int id) {
		String sql = "DELETE FROM `user` WHERE id=?;";
		return super.update(sql, id);
	}

	@Override
	public int updateUserById(User user) {
		String sql = "UPDATE `user` SET username = ?, `password` = ?,phoneNo = ?,address = ? WHERE id = ?;";
		return super.update(sql, user.getUsername(), user.getPassword(), user.getPhoneNo(), user.getAddress(),
				user.getId());
	}

	/**
	 * ��֧������
	 */
	@Override
	public User get(int id) {
		String sql = "SELECT id,username,`password`,phoneNo,address,regDate FROM `user` where id=?;";
		return super.get(sql, id);
	}

	@Override
	public User get(Connection conn, int id) {
		String sql = "SELECT id,username,`password`,phoneNo,address,regDate FROM `user` where id=?;";
		return super.get(conn, sql, id);
	}

	@Override
	public List<User> getListAll() {
		String sql = "SELECT id,username,password,phoneNo,address,regDate FROM `user`;";
		return super.getList(sql);
	}

	@Override
	public long getCountByName(String username) {
		String sql = "SELECT count(id) FROM `user` WHERE username = ?;";
		return (long) super.getValue(sql, username);
		
	}

	@Override
	public List<User> query(String username, String address, String phoneNo) {
		String sql = "SELECT id,username,password,phoneNo,address,regDate FROM `user` where 1=1";
		if(username!=null && !"".equals(username)) {
			sql = sql + " AND username like '%"+username+"%'";
		}
		if(address!=null && !"".equals(address)) {
			sql = sql + " AND address like '%"+address+"%'";
		}
		if(phoneNo!=null && !"".equals(phoneNo)) {
			sql = sql + " AND phoneNo like '%"+phoneNo+"%'";
		}
		return super.getList(sql);
	}

}
