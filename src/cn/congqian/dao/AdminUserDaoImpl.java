package cn.congqian.dao;

import java.util.List;

import cn.congqian.model.AdminUser;
import cn.congqian.model.User;

public class AdminUserDaoImpl extends BaseDao<AdminUser> implements AdminUserDao {

	@Override
	public AdminUser adminLogin(AdminUser user) {
		// TODO Auto-generated method stub
		String sql = "select * from t_admin where name=? and password=? and status = 1";
		return super.get(sql, user.getName(), user.getPassword());
	}

	@Override
	public int updatePassword(AdminUser user) {
		// TODO Auto-generated method stub
		String sql = "update t_admin set password=? where id=?";
		return super.update(sql,user.getPassword(),user.getId());
	}

	@Override
	public List<AdminUser> AdminList(int status) {
		// TODO Auto-generated method stub
		String sql = "select * from t_admin where type = 2 and status = ?";
		return super.getList(sql , status);
	}

	@Override
	public int updateStatus(AdminUser adminUser) {
		// TODO Auto-generated method stub
		String sql = "update t_admin set status = ? where id = ?";
		return super.update(sql, adminUser.getStatus(),adminUser.getId());
	}

	@Override
	public int insertAdmin(AdminUser adminUser) {
		// TODO Auto-generated method stub
		String sql = "insert into t_admin(name,password,type,status) value(?,?,2,1)";
		return super.update(sql, adminUser.getName(),adminUser.getPassword());
	}
}
