package cn.congqian.service;

import java.util.List;

import cn.congqian.dao.CartDao;
import cn.congqian.dao.FactoryDao;
import cn.congqian.model.Cart;

public class CartServiceImpl implements CartService{
	
	CartDao cartDao = FactoryDao.geCartDao();

	@Override
	public int cartAdd(Cart cart) {
		// TODO Auto-generated method stub
		return cartDao.cartAdd(cart);
	}

	@Override
	public int cartDele(String cart_id) {
		// TODO Auto-generated method stub
		return cartDao.cartDele(cart_id);
	}

	@Override
	public List<Cart> cartList(int user_id) {
		// TODO Auto-generated method stub
		return cartDao.cartList(user_id);
	}

	@Override
	public Cart cartById(String car_id) {
		// TODO Auto-generated method stub
		return cartDao.cartById(car_id);
	}

}
