package cn.congqian.dao;

import java.util.List;

import cn.congqian.model.Order;

public class OrderDaoImpl extends BaseDao<Order> implements OrderDao{

	
	@Override
	public List<Order> orderSelect(int stataus) {
		// TODO Auto-generated method stub
		String sql = "select order_id,user_id,username,order_createtime,order_status,order_bankID,order_username,order_phone,order_address "
				+ "from t_order o,t_user u "
				+ "where o.user_id = u.id "
				+ "and order_status=?";
		return super.getList(sql, stataus);
	}

	@Override
	public List<Order> orderSelectByUserId(int stataus, int userid) {
		// TODO Auto-generated method stub
		String sql = "select * "
				+ "from t_order "
				+ "where user_id=? and order_status=?";
		return super.getList(sql, userid,stataus);
	}
	
	@Override
	public int orderAdd(Order order) {
		// TODO Auto-generated method stub
		String sql = "insert into t_order(order_id,user_id,order_createtime,order_bankID,order_status,order_username,order_phone,order_address) value(?,?,?,?,?,?,?,?)";
		return super.update(sql, order.getOrder_id(),order.getUser_id(),order.getOrder_createtime(),order.getOrder_bankID(),order.getOrder_status(),order.getOrder_username(),order.getOrder_phone(),order.getOrder_address());
	}

	@Override
	public int orderUpdate(Order order) {
		// TODO Auto-generated method stub
		String sql = "update t_order set order_username = ?,order_phone = ?,order_address = ? where order_id = ?";
		return super.update(sql, order.getOrder_username(),order.getOrder_phone(),order.getOrder_address(),order.getOrder_id());
	}

	@Override
	public int orderUpdateStatus(Order order) {
		// TODO Auto-generated method stub
		String sql = "update t_order set order_status = ? where order_id = ?";
		return super.update(sql, order.getOrder_status(),order.getOrder_id());
	}

	@Override
	public Order orderSelectById(String order_id) {
		// TODO Auto-generated method stub
		String sql = "select * from t_order where order_id = ?";
		return super.get(sql, order_id);
	}



}
