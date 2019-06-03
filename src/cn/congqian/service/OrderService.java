package cn.congqian.service;

import java.util.List;

import cn.congqian.model.Order;
import cn.congqian.model.OrderDetails;
import cn.congqian.model.OrderDetails1;

public interface OrderService {
	
	/**
	 * 根据状态查询订单列表
	 * @param stataus
	 * @return
	 */
	public List<Order> selectByStatus(int stataus);
	
	/**
	 * 根据用户、状态查询订单列表
	 * @param stataus
	 * @return
	 */
	public List<Order> selectByUserid(int stataus,int userid);
	
	/**
	 * 根据用户、状态查询订单列表
	 * @param stataus
	 * @return
	 */
	public List<OrderDetails> select(int stataus,int userid);
	/**
	 * 添加订单
	 * @param order
	 * @return
	 */
	public int OrderAdd(Order order);
	/**
	 * 订单商品添加
	 * @param order
	 * @return
	 */
	public int OrderDetailsAdd(OrderDetails orderDetails) ;
	
	
	/**
	 * 后台查看订单
	 * @param status
	 * @return
	 */
	public List<OrderDetails> OrderDetailsByStatus(int status);
	
	/**
	 * 后台修改订单
	 * @param status
	 * @return
	 */
	public int OrderUpdate(Order order);
	
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
	
	/**
	 * 查看订单详情
	 * @param status
	 * @return
	 */
	public List<OrderDetails> OrderDetailsByOrderId(String order);

}
