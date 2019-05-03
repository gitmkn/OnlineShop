package cn.congqian.model;

public class GoodsPicture {
	/**
	 * 图片地址id
	 */
	private int picture_id;
	/**
	 * 图片地址
	 */
	private String picture_url;
	/**
	 * 商品id
	 */
	private Goods goods_id;
	public int getPicture_id() {
		return picture_id;
	}
	public void setPicture_id(int picture_id) {
		this.picture_id = picture_id;
	}
	public String getPicture_url() {
		return picture_url;
	}
	public void setPicture_url(String picture_url) {
		this.picture_url = picture_url;
	}
	public Goods getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(Goods goods_id) {
		this.goods_id = goods_id;
	}
	@Override
	public String toString() {
		return "GoodsPicture [picture_id=" + picture_id + ", picture_url=" + picture_url + ", goods_id=" + goods_id
				+ "]";
	}
	
}
