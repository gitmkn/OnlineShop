package cn.congqian.service;

public class FactoryService {

	public static UserService getUserService() {
		return new UserServiceImpl();
	}
}
