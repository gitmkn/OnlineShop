package cn.congqian.service;

public class FactoryService {

	public static AdminUserService getAdminUserService() {
		return new AdminUserServiceImpl();
	}
	
	public static UserService getUserService() {
		return new UserServiceImpl();
	}
	
	/**
	 * 商品
	 * @return
	 */
	public static GoodsService getGoodsService() {
		return new GoodsServiceImpl();
	}
	
	/**
	 * 留言
	 * @return
	 */
	public static MessageService getMessageService() {
		return new MessageServiceImpl();
	}
}
