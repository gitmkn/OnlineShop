package cn.congqian.model;

import java.math.BigDecimal;
import java.sql.Time;

public class Goods {
	/**
	 * 商品id
	 */
	private int goods_id;
	/**
	 * 商品名称
	 */
	private String goods_name;
	/**
	 * 商品描述
	 */
	private String goods_describe;
	/**
	 * 商品价格
	 */
	private BigDecimal goods_price;
	/**
	 * 商品上架时间
	 */
	private Time goods_createtime;
	/**
	 * 商品数量
	 */
	private int goods_sum;
	/**
	 * 商品类别
	 */
	private GoodsType goods_type;
	/**
	 * 商品状态
	 */
	private int goods_status;
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	public String getGoods_name() {
		return goods_name;
	}
	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}
	public String getGoods_describe() {
		return goods_describe;
	}
	public void setGoods_describe(String goods_describe) {
		this.goods_describe = goods_describe;
	}
	public BigDecimal getGoods_price() {
		return goods_price;
	}
	public void setGoods_price(BigDecimal goods_price) {
		this.goods_price = goods_price;
	}
	public Time getGoods_createtime() {
		return goods_createtime;
	}
	public void setGoods_createtime(Time goods_createtime) {
		this.goods_createtime = goods_createtime;
	}
	public int getGoods_sum() {
		return goods_sum;
	}
	public void setGoods_sum(int goods_sum) {
		this.goods_sum = goods_sum;
	}
	public GoodsType getGoods_type() {
		return goods_type;
	}
	public void setGoods_type(GoodsType goods_type) {
		this.goods_type = goods_type;
	}
	public int getGoods_status() {
		return goods_status;
	}
	public void setGoods_status(int goods_status) {
		this.goods_status = goods_status;
	}
	@Override
	public String toString() {
		return "Goods [goods_id=" + goods_id + ", goods_name=" + goods_name + ", goods_describe=" + goods_describe
				+ ", goods_price=" + goods_price + ", goods_createtime=" + goods_createtime + ", goods_sum=" + goods_sum
				+ ", goods_type=" + goods_type + ", goods_status=" + goods_status + "]";
	}
	
}
