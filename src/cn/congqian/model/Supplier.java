package cn.congqian.model;

import java.sql.Date;

public class Supplier {
	/**
	 * 供货商id
	 */
	private String supplier_id;
	/**
	 * 供货商名vc
	 */
	private String supplier_name;
	/**
	 * 供货商联系人
	 */
	private String supplier_username;
	/**
	 * 供货商地址
	 */
	private String supplier_address;
	/**
	 * 供货商邮箱
	 */
	private String supplier_email;

	/**
	 * 供货电话
	 */
	private String supplier_phone;

	public String getSupplier_id() {
		return supplier_id;
	}

	public void setSupplier_id(String supplier_id) {
		this.supplier_id = supplier_id;
	}

	public String getSupplier_name() {
		return supplier_name;
	}

	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}

	public String getSupplier_username() {
		return supplier_username;
	}

	public void setSupplier_username(String supplier_username) {
		this.supplier_username = supplier_username;
	}

	public String getSupplier_address() {
		return supplier_address;
	}

	public void setSupplier_address(String supplier_address) {
		this.supplier_address = supplier_address;
	}

	public String getSupplier_email() {
		return supplier_email;
	}

	public void setSupplier_email(String supplier_email) {
		this.supplier_email = supplier_email;
	}

	public String getSupplier_phone() {
		return supplier_phone;
	}

	public void setSupplier_phone(String supplier_phone) {
		this.supplier_phone = supplier_phone;
	}

	@Override
	public String toString() {
		return "Supplier [supplier_id=" + supplier_id + ", supplier_name=" + supplier_name + ", supplier_username="
				+ supplier_username + ", supplier_address=" + supplier_address + ", supplier_email=" + supplier_email
				+ ", supplier_phone=" + supplier_phone + "]";
	}


}
