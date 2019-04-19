package cn.congqian.dao;

public class FactoryDao {//工厂类

	public static UserDao getUserDao() {
		return new UserDaoImpl();
	}
}
