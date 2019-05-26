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
	private int goodsType_id;
	/**
	 * 商品状态
	 */
	private int goods_status;
	/**
	 * 商品图片id
	 */
	private String goodsPicture_id;
	
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
	public int getGoodsType_id() {
		return goodsType_id;
	}
	public void setGoodsType_id(int goodsType_id) {
		this.goodsType_id = goodsType_id;
	}
	public int getGoods_status() {
		return goods_status;
	}
	public void setGoods_status(int goods_status) {
		this.goods_status = goods_status;
	}
	public String getGoodsPicture_id() {
		return goodsPicture_id;
	}
	public void setGoodsPicture_id(String goodsPicture_id) {
		this.goodsPicture_id = goodsPicture_id;
	}
	@Override
	public String toString() {
		return "Goods [goods_id=" + goods_id + ", goods_name=" + goods_name + ", goods_describe=" + goods_describe
				+ ", goods_price=" + goods_price + ", goods_createtime=" + goods_createtime + ", goods_sum=" + goods_sum
				+ ", goodsType_id=" + goodsType_id + ", goods_status=" + goods_status + ", goodsPicture_id="
				+ goodsPicture_id + "]";
	}
	
}
