package cn.congqian.model;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Timestamp;

public class Godown {
	/**
	 * 入库id
	 */
	private String godown_id;
	/**
	 * 入库时间
	 */
	private Timestamp godown_date;
	/**
	 * 商品数量
	 */
	private int godown_sum;
	/**
	 * 入库员
	 */
	private String godown_admin;
	/**
	 * 商品id
	 */
	private int goods_id;
	
	/**
	 * 商品名称
	 */
	private String goods_name;
	/**
	 * 供货商id
	 */
	private String supplier_id;
	
	/**
	 * 供货商名称
	 */
	private String supplier_name;
	/**
	 * 供货商id
	 */
	private BigDecimal price;

	public String getGodown_id() {
		return godown_id;
	}
	public void setGodown_id(String godown_id) {
		this.godown_id = godown_id;
	}
	public Timestamp getGodown_date() {
		return godown_date;
	}
	public void setGodown_date(Timestamp godown_date) {
		this.godown_date = godown_date;
	}
	public int getGodown_sum() {
		return godown_sum;
	}
	public void setGodown_sum(int godown_sum) {
		this.godown_sum = godown_sum;
	}
	public String getGodown_admin() {
		return godown_admin;
	}
	public void setGodown_admin(String godown_admin) {
		this.godown_admin = godown_admin;
	}
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	public String getSupplier_id() {
		return supplier_id;
	}
	public void setSupplier_id(String supplier_id) {
		this.supplier_id = supplier_id;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getSupplier_name() {
		return supplier_name;
	}
	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}
	@Override
	public String toString() {
		return "Godown [godown_id=" + godown_id + ", godown_date=" + godown_date + ", godown_sum=" + godown_sum
				+ ", godown_admin=" + godown_admin + ", goods_id=" + goods_id + ", goods_name=" + goods_name
				+ ", supplier_id=" + supplier_id + ", supplier_name=" + supplier_name + ", price=" + price + "]";
	}
}
