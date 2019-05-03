package cn.congqian.dao;

import cn.congqian.model.AdminUser;

public class AdminUserDaoImpl extends BaseDao<AdminUser> implements AdminUserDao {

	@Override
	public AdminUser adminLogin(AdminUser user) {
		// TODO Auto-generated method stub
		String sql = "select * from t_admin where name=? and password=?";
		return super.get(sql, user.getName(), user.getPassword());
	}
}
