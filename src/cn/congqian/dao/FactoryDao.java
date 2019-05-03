package cn.congqian.dao;

public class FactoryDao {//工厂类

	/**
	 * 后台管理
	 * @return
	 */
	public static AdminUserDao getAdminUserDao() {
		return new AdminUserDaoImpl();
	}
	
	/**
	 * 用户
	 * @return
	 */
	public static UserDao getUserDao() {
		return new UserDaoImpl();
	}
	
	/**
	 * 商品
	 * @return
	 */
	public static GoodsDao getGoodsDao() {
		return new GoodsDaoImpl();
	}
	
	
	/**
	 * 留言
	 * @return
	 */
	public static MessageDao getMessageDao() {
		return new MessageDaoImpl();
	}
}
