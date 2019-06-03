package cn.congqian.model;

public class GoodsPicture {
	/**
	 * 图片地址id
	 */
	private String picture_id;
	/**
	 * 图片地址
	 */
	private String picture_url;
	/**
	 * 商品id
	 */
	private int goods_id;
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
	public int getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}
	@Override
	public String toString() {
		return "GoodsPicture [picture_id=" + picture_id + ", picture_url=" + picture_url + ", goods_id=" + goods_id
				+ "]";
	}
	
}
