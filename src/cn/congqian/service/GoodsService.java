package cn.congqian.service;

import java.util.List;

import cn.congqian.model.Goods;
import cn.congqian.model.GoodsPicture;

public interface GoodsService {

	/**
	 * 查询商品列表
	 * @return
	 */
	public List<Goods> goodsList();
	
	/**
	 * 根据id查询商品
	 * @return
	 */
	public Goods goodsSelectById(int id);
	
	/**
	 * 根据时间倒叙查询商品
	 * @return
	 */
	public List<Goods> goodsSelectByCreatetime();
	
	/**
	 * 根据类别查询商品
	 * @return
	 */
	public List<Goods> goodsSelectByType(int type);
	
	/**
	 * 添加商品
	 * @return
	 */
	public int goodsAdd(Goods goods,GoodsPicture goodsPicture);
}
