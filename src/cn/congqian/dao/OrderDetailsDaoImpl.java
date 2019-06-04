package cn.congqian.dao;

import java.util.List;

import cn.congqian.model.OrderDetails1;
import cn.congqian.model.Order;
import cn.congqian.model.OrderDetails;

public class OrderDetailsDaoImpl extends BaseDao<OrderDetails> implements OrderDetailsDao{

	@Override
	public List<OrderDetails> select() {
		// TODO Auto-generated method stub
		String sql = "select tod.details_id,tod.goods_id,god.goods_name,tod.goods_sum,tor.order_id,tor.order_createtime,tor.order_status,tor.user_id,tor.order_bankID " + 
				"from t_order tor,t_order_details tod,t_goods god " + 
				"where tor.order_id = tod.order_id "
				+ "and tod.goods_id = god.goods_id";
		return super.getList(sql);
	}

	@Override
	public int OrderDetailsAdd(OrderDetails orderDetails) {
		// TODO Auto-generated method stub
		String sql = "insert into t_order_details(goods_id,goods_sum,order_id) value(?,?,?)";
		return super.update(sql, orderDetails.getGoods_id(),orderDetails.getGoods_sum(),orderDetails.getOrder_id());
	}

	@Override
	public List<OrderDetails> OrderDetailsSelect(int userid, int stataus) {
		// TODO Auto-generated method stub
		String sql = "select d.details_id,d.order_id,d.goods_id,g.goods_name,d.goods_sum,o.order_createtime,p.picture_url "
				+ "from t_order_details d,t_order o,t_goods g,t_goods_picture p "
				+ "where d.order_id = o.order_id "
				+ "and g.goods_id = d.goods_id "
				+ "and g.picture_id = p.picture_id "
				+ "and o.user_id = ? and order_status = ?";
		return super.getList(sql, userid,stataus);
	}
	
	@Override
	public List<OrderDetails> OrderDetailsByStatus(int status) {
		// TODO Auto-generated method stub
		String sql = "select d.details_id,d.order_id,d.goods_id,d.goods_name,d.goods_sum,o.order_createtime,u.username "
				+ "from t_order_details d,t_order o,t_goods g,t_user u "
				+ "where d.order_id = o.order_id "
				+ "and g.goods_id = d.goods_id "
				+ "and o.user_id = u.id "
				+ "and order_status = ?";
		return super.getList(sql, status);
	}

	@Override
	public List<OrderDetails> OrderDetailsByOrderId(String order_id) {
		// TODO Auto-generated method stub
		String sql = "select d.details_id, d.goods_id, g.goods_name, d.goods_sum, p.picture_url,d.order_id "
				+ "from t_order_Details d,t_goods g,t_goods_picture p "
				+ "where d.goods_id = g.goods_id "
				+ "and g.picture_id = p.picture_id "
				+ "and order_id = ?";
		return super.getList(sql, order_id);
	}
}
