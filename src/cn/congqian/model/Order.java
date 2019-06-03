package cn.congqian.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class Order {
	/**
	 * 订单id
	 */
	private String order_id;
	/**
	 * 用户id
	 */
	private int user_id;
	
	/**
	 * 用户名称
	 */
	private String username;
	/**
	 * 创建时间
	 */
	private Timestamp order_createtime;
	/**
	 * 付款编号
	 */
	private String order_bankID;
	/**
	 * 订单状态
	 */
	private int order_status;
	/**
	 * 配送姓名
	 */
	private String order_username;
	/**
	 * 配送电话
	 */
	private String order_phone;
	/**
	 * 配送地址
	 */
	private String order_address;
	
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public Timestamp getOrder_createtime() {
		return order_createtime;
	}
	public void setOrder_createtime(Timestamp order_createtime) {
		this.order_createtime = order_createtime;
	}
	public String getOrder_bankID() {
		return order_bankID;
	}
	public void setOrder_bankID(String order_bankID) {
		this.order_bankID = order_bankID;
	}
	public int getOrder_status() {
		return order_status;
	}
	public void setOrder_status(int order_status) {
		this.order_status = order_status;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getOrder_username() {
		return order_username;
	}
	public void setOrder_username(String order_username) {
		this.order_username = order_username;
	}
	public String getOrder_phone() {
		return order_phone;
	}
	public void setOrder_phone(String i) {
		this.order_phone = i;
	}
	public String getOrder_address() {
		return order_address;
	}
	public void setOrder_address(String order_address) {
		this.order_address = order_address;
	}
	@Override
	public String toString() {
		return "Order [order_id=" + order_id + ", user_id=" + user_id + ", username=" + username + ", order_createtime="
				+ order_createtime + ", order_bankID=" + order_bankID + ", order_status=" + order_status
				+ ", order_username=" + order_username + ", order_phone=" + order_phone + ", order_address="
				+ order_address + "]";
	}
	
}
