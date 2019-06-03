package cn.congqian.dao;

import java.util.List;

import cn.congqian.model.Cart;

public class CartDaoImpl extends BaseDao<Cart> implements CartDao{

	@Override
	public int cartAdd(Cart cart) {
		// TODO Auto-generated method stub
		String sql = "insert into t_car(car_id,user_id,goods_id,createtime,sum) value(?,?,?,?,?)";
		return super.update(sql, cart.getCar_id(),cart.getUser_id(),cart.getGoods_id(),cart.getCreatetime(),cart.getSum());
	}

	@Override
	public int cartDele(String cart_id) {
		// TODO Auto-generated method stub
		String sql = "delete from t_car where car_id = ?";
		return super.update(sql, cart_id);
	}

	@Override
	public List<Cart> cartList(int user_id) {
		// TODO Auto-generated method stub
		String sql = "select * "
				+ "from t_car c,t_goods g,t_goods_picture p "
				+ "where c.goods_id = g.goods_id "
				+ "and g.picture_id = p.picture_id "
				+ "and user_id = ?";
		return super.getList(sql, user_id);
	}

	@Override
	public Cart cartById(String car_id) {
		// TODO Auto-generated method stub
		String sql = "select * "
				+ "from t_car c,t_goods g,t_goods_picture p "
				+ "where c.goods_id = g.goods_id "
				+ "and g.picture_id = p.picture_id "
				+ "and car_id=?";
		return super.get(sql, car_id);
	}

}
