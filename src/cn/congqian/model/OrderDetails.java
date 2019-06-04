package cn.congqian.model;

import java.sql.Timestamp;
import java.util.List;

public class OrderDetails {

	private int details_id;
	
	private int goods_id;
	
	private String goods_name;
	
	private int goods_sum;
	
	private String picture_url;
	
	private String order_id;
	
	private int usre_id;
	
	private Timestamp order_createtime;
	
	private String username;

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

	public String getOrder_id() {
		return order_id;
	}

	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}

	public int getUsre_id() {
		return usre_id;
	}

	public void setUsre_id(int usre_id) {
		this.usre_id = usre_id;
	}

	public Timestamp getOrder_createtime() {
		return order_createtime;
	}

	public void setOrder_createtime(Timestamp order_createtime) {
		this.order_createtime = order_createtime;
	}

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPicture_url() {
		return picture_url;
	}

	public void setPicture_url(String picture_url) {
		this.picture_url = picture_url;
	}

	@Override
	public String toString() {
		return "OrderDetails [details_id=" + details_id + ", goods_id=" + goods_id + ", goods_name=" + goods_name
				+ ", goods_sum=" + goods_sum + ", picture_url=" + picture_url + ", order_id=" + order_id + ", usre_id="
				+ usre_id + ", order_createtime=" + order_createtime + ", username=" + username + "]";
	}

	
}
