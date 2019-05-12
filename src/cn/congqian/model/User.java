package cn.congqian.model;

import java.sql.Date;

public class User {
	/**
	 * 用户id
	 */
	private int id;
	/**
	 * 用户姓名
	 */
	private String username;
	/**
	 * 用户密码
	 */
	private String password;
	/**
	 * 用户电话
	 */
	private String phone;
	/**
	 * 用户邮箱
	 */
	private String email;
	/**
	 * 用户地址
	 */
	private String address;
	/**
	 * 用户创建时间
	 */
	private Date createtime;
	/**
	 * 用户用户状态
	 */
	private int status;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
//	@Override
//	public String toString() {
//		return "{id:" + id + ", username:" + username + ", password:" + password + ", phone:" + phone + ", email:"
//				+ email + ", address:" + address + ", createtime:" + createtime + ", status:" + status + "}";
		/*return "[\""+ id + "\",\"" + username + "\",\"" + phone + "\",\""+ email + "\",\"" + address + "\",\"" + createtime + "\",\"已审核\",oper]";*/
//	}
	
}
