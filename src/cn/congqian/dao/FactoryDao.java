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
	
	/**
	 * 供货商
	 * @return
	 */
	public static SupplierDao getSupplierDao() {
		return new SupplierDaoImpl();
	}
	
	/**
	 * 入库
	 * @return
	 */
	public static GodownDao getGodownDao() {
		return new GodownDaoImpl();
	}
	
	/**
	 * 商品类型
	 * @return
	 */
	public static GoodsTypeDao geGoodsTypeDao() {
		return new GoodsTypeDaoImpl();
	}
}
