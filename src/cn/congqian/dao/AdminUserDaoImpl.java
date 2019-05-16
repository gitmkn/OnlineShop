package cn.congqian.dao;

import cn.congqian.model.AdminUser;
import cn.congqian.model.User;

public class AdminUserDaoImpl extends BaseDao<AdminUser> implements AdminUserDao {

	@Override
	public AdminUser adminLogin(AdminUser user) {
		// TODO Auto-generated method stub
		String sql = "select * from t_admin where name=? and password=?";
		return super.get(sql, user.getName(), user.getPassword());
	}

	@Override
	public int updatePassword(AdminUser user) {
		// TODO Auto-generated method stub
		String sql = "update t_admin set password=? where id=?";
		return super.update(sql,user.getPassword(),user.getId());
	}
}
