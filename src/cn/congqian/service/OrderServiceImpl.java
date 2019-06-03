package cn.congqian.service;

import java.util.List;

import cn.congqian.dao.FactoryDao;
import cn.congqian.dao.OrderDao;
import cn.congqian.dao.OrderDetailsDao;
import cn.congqian.model.Order;
import cn.congqian.model.OrderDetails;
import cn.congqian.model.OrderDetails1;

public class OrderServiceImpl implements OrderService{

	OrderDao orderDao = FactoryDao.getOrderDao();
	OrderDetailsDao orderDetailsDao = FactoryDao.getOrderDetailsDao();

	@Override
	public List<Order> selectByStatus(int stataus) {
		// TODO Auto-generated method stub
		return orderDao.orderSelect(stataus);
	}

	@Override
	public List<Order> selectByUserid(int stataus, int userid) {
		// TODO Auto-generated method stub
		return orderDao.orderSelectByUserId(stataus,userid);
	}

	@Override
	public List<OrderDetails> select(int stataus, int userid) {
		// TODO Auto-generated method stub
		return orderDetailsDao.OrderDetailsSelect(userid, stataus);
	}

	@Override
	public int OrderAdd(Order order) {
		// TODO Auto-generated method stub
		return orderDao.orderAdd(order);
	}
	
	@Override
	public int OrderDetailsAdd(OrderDetails orderDetails) {
		// TODO Auto-generated method stub
		return orderDetailsDao.OrderDetailsAdd(orderDetails);
	}

	@Override
	public List<OrderDetails> OrderDetailsByStatus(int status) {
		// TODO Auto-generated method stub
		return orderDetailsDao.OrderDetailsByStatus(status);
	}

	@Override
	public int OrderUpdate(Order order) {
		// TODO Auto-generated method stub
		return orderDao.orderUpdate(order);
	}

	@Override
	public int orderUpdateStatus(Order order) {
		// TODO Auto-generated method stub
		return orderDao.orderUpdateStatus(order);
	}

	@Override
	public Order orderSelectById(String order_id) {
		// TODO Auto-generated method stub
		return orderDao.orderSelectById(order_id);
	}

	@Override
	public List<OrderDetails> OrderDetailsByOrderId(String order_id) {
		// TODO Auto-generated method stub
		return orderDetailsDao.OrderDetailsByOrderId(order_id);
	}
	
}
