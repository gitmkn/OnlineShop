package cn.congqian.model;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

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
	private Timestamp goods_createtime;
	/**
	 * 商品数量
	 */
	private int goods_sum;
	/**
	 * 商品类别id
	 */
	private int type_id;
	
	/**
	 * 商品类别
	 */
	private String type_name;
	/**
	 * 商品状态
	 */
	private int goods_status;
	/**
	 * 商品图片id
	 */
	private String picture_id;
	
	/**
	 * 商品图片id
	 */
	private String picture_url;

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

	public Timestamp getGoods_createtime() {
		return goods_createtime;
	}

	public void setGoods_createtime(Timestamp goods_createtime) {
		this.goods_createtime = goods_createtime;
	}

	public int getGoods_sum() {
		return goods_sum;
	}

	public void setGoods_sum(int goods_sum) {
		this.goods_sum = goods_sum;
	}


	public int getGoods_status() {
		return goods_status;
	}

	public void setGoods_status(int goods_status) {
		this.goods_status = goods_status;
	}

	public String getPicture_id() {
		return picture_id;
	}

	public void setPicture_id(String picture_id) {
		this.picture_id = picture_id;
	}

	public String getPicture_url() {
		return picture_url;
	}

	public void setPicture_url(String picture_url) {
		this.picture_url = picture_url;
	}

	public int getType_id() {
		return type_id;
	}

	public void setType_id(int type_id) {
		this.type_id = type_id;
	}

	public String getType_name() {
		return type_name;
	}

	public void setType_name(String type_name) {
		this.type_name = type_name;
	}

	@Override
	public String toString() {
		return "Goods [goods_id=" + goods_id + ", goods_name=" + goods_name + ", goods_describe=" + goods_describe
				+ ", goods_price=" + goods_price + ", goods_createtime=" + goods_createtime + ", goods_sum=" + goods_sum
				+ ", type_id=" + type_id + ", type_name=" + type_name + ", goods_status=" + goods_status
				+ ", picture_id=" + picture_id + ", picture_url=" + picture_url + "]";
	}

	
}
