package cn.congqian.dao;

import java.util.List;

import cn.congqian.model.GoodsType;

public interface GoodsTypeDao {

	/**
	 * 商品类型
	 * @return
	 */
	public List<GoodsType> goodsTypes();
}
