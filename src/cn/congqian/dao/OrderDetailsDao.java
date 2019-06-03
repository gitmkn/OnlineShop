package cn.congqian.dao;

import java.util.List;

import cn.congqian.model.OrderDetails1;
import cn.congqian.model.Order;
import cn.congqian.model.OrderDetails;

public interface OrderDetailsDao {
	
//	public List<OrderDetails> selectAll();
	
	public List<OrderDetails> select();
	
	/**
	 * 订单商品添加
	 * @param order
	 * @return
	 */
	public int OrderDetailsAdd(OrderDetails orderDetails);
	
	/**
	 * 查询
	 * @return
	 */
	public List<OrderDetails> OrderDetailsSelect(int userid,int stataus);
	
	/**
	 * 后台查看订单
	 * @param status
	 * @return
	 */
	public List<OrderDetails> OrderDetailsByStatus(int status);
	
	/**
	 * 查看订单详情
	 * @param status
	 * @return
	 */
	public List<OrderDetails> OrderDetailsByOrderId(String order_id);

}
