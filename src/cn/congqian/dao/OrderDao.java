package cn.congqian.dao;

import java.util.List;

import cn.congqian.model.Order;
import cn.congqian.model.OrderDetails;

public interface OrderDao {
	
	/**
	 * 查询订单
	 * @return
	 */
	public List<Order> orderSelect(int stataus);
	
	/**
	 * 查询用户订单
	 * @return
	 */
	public List<Order> orderSelectByUserId(int stataus,int userid);
	/**
	 * 添加订单
	 * @param order
	 * @return
	 */
	public int orderAdd(Order order);
	
	/**
	 * 修改订单
	 * @param order
	 * @return
	 */
	public int orderUpdate(Order order);
	
	/**
	 * 修改订单状态
	 * @param order
	 * @return
	 */
	public int orderUpdateStatus(Order order);
	
	/**
	 * 订单查询id
	 * @param order
	 * @return
	 */
	public Order orderSelectById(String order_id);

}
