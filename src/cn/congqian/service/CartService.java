package cn.congqian.service;

import java.util.List;

import cn.congqian.model.Cart;

public interface CartService {
	
	/**
	 * 购物车添加商品
	 * @param cart
	 * @return
	 */
	public int cartAdd(Cart cart);
	
	/**
	 * 购物车删除商品
	 * @param cart
	 * @return
	 */
	public int cartDele(String cart_id);
	
	/**
	 * 购物车商品
	 * @param cart
	 * @return
	 */
	public List<Cart> cartList(int user_id);
	
	/**
	 * 根据id购物车商品
	 * @param cart
	 * @return
	 */
	public Cart cartById(String car_id);
}
