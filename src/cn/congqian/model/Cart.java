package cn.congqian.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Cart {

	private String car_id;
	
	private int user_id;
	
	private int goods_id;
	
	private String goods_name;
	
	private BigDecimal goods_price;
	
	private int goods_sum;
	
	private String picture_url;
	
	private Timestamp createtime;
	
	private int sum;

	public String getCar_id() {
		return car_id;
	}

	public void setCar_id(String car_id) {
		this.car_id = car_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}

	public Timestamp getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Timestamp createtime) {
		this.createtime = createtime;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}

	public BigDecimal getGoods_price() {
		return goods_price;
	}

	public void setGoods_price(BigDecimal goods_price) {
		this.goods_price = goods_price;
	}

	public String getPicture_url() {
		return picture_url;
	}

	public void setPicture_url(String picture_url) {
		this.picture_url = picture_url;
	}

	public int getGoods_sum() {
		return goods_sum;
	}

	public void setGoods_sum(int goods_sum) {
		this.goods_sum = goods_sum;
	}

	@Override
	public String toString() {
		return "Cart [car_id=" + car_id + ", user_id=" + user_id + ", goods_id=" + goods_id + ", goods_name="
				+ goods_name + ", goods_price=" + goods_price + ", goods_sum=" + goods_sum + ", picture_url="
				+ picture_url + ", createtime=" + createtime + ", sum=" + sum + "]";
	}


	
	
}
