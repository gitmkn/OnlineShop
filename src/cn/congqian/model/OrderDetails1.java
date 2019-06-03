package cn.congqian.model;

import java.util.List;

public class OrderDetails1 {

	private int details_id;
	
	private int goods_id;
	
	private int goods_sum;
	
	private List<Order> order;

	public int getDetails_id() {
		return details_id;
	}

	public void setDetails_id(int details_id) {
		this.details_id = details_id;
	}

	public int getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}

	public int getGoods_sum() {
		return goods_sum;
	}

	public void setGoods_sum(int goods_sum) {
		this.goods_sum = goods_sum;
	}

	public List<Order> getOrder() {
		return order;
	}

	public void setOrder(List<Order> order) {
		this.order = order;
	}

	@Override
	public String toString() {
		return "OrderDetails [details_id=" + details_id + ", goods_id=" + goods_id + ", goods_sum=" + goods_sum
				+ ", order=" + order + "]";
	}

	
}
