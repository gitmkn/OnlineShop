package cn.congqian.dao;

import java.util.List;

import cn.congqian.model.Goods;
import cn.congqian.model.GoodsPicture;

public interface GoodsDao {
	/**
	 * 查询商品列表
	 * @return
	 */
	public List<Goods> goodsList(int goods_status);
	
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
	public int goodsAdd(Goods goods);
	
	/**
	 * 添加商品图片
	 * @return
	 */
	public int goodsPictureAdd(GoodsPicture goodsPicture);
	
	/**
	 * 修改商品
	 * @return
	 */
	public int goodsUpdate(Goods goods);
	/**
	 * 修改商品图片
	 * @return
	 */
	public int goodsPictureDelete(GoodsPicture goodsPicture);
	
	/**
	 * 修改商品状态
	 * @return
	 */
	public int updateStatus(Goods goods);
	
	/**
	 * 入库数量
	 * @return
	 */
	public int updateSum(Goods goods);
}
