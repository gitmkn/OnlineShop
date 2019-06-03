package cn.congqian.service;

import java.util.List;

import cn.congqian.model.Goods;
import cn.congqian.model.GoodsPicture;

public interface GoodsService {

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
	public int goodsAdd(Goods goods,GoodsPicture goodsPicture);
	/**
	 * 修改商品
	 * @return
	 */
	public int goodsUpdate(Goods goods, GoodsPicture goodsPicture);
	
	/**
	 * 修改商品内容
	 * @return
	 */
	public int goodsUpdateDescribe(int goods_id, String goods_describe);
	
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
	
	/**
	 * 搜索商品
	 * @return
	 */
	public List<Goods> goodsBySearch(String content);
	
	/**
	 * 修改数量
	 * @return
	 */
	public int goodsUpdateSum(int goods_id,int goods_sum);
}
