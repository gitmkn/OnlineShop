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
	
	/**
	 * 供货商
	 * @return
	 */
	public static SupplierService getSupplierService() {
		return new SupplierServiceImpl();
	}
	

	/**
	 * 入库
	 * @return
	 */
	public static GodownService getGodownService() {
		return new GodownServiceImpl();
	}
	
	/**
	 * 商品类型
	 * @return
	 */
	public static GoodsTypeService geGoodsTypeService() {
		return new GoodsTypeServiceImpl();
	}
}
